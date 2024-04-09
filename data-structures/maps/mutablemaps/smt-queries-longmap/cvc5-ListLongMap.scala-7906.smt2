; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98216 () Bool)

(assert start!98216)

(declare-fun b_free!23881 () Bool)

(declare-fun b_next!23881 () Bool)

(assert (=> start!98216 (= b_free!23881 (not b_next!23881))))

(declare-fun tp!84348 () Bool)

(declare-fun b_and!38567 () Bool)

(assert (=> start!98216 (= tp!84348 b_and!38567)))

(declare-fun b!1129410 () Bool)

(declare-datatypes ((Unit!36948 0))(
  ( (Unit!36949) )
))
(declare-fun e!642814 () Unit!36948)

(declare-fun lt!501406 () Unit!36948)

(assert (=> b!1129410 (= e!642814 lt!501406)))

(declare-fun call!48049 () Unit!36948)

(assert (=> b!1129410 (= lt!501406 call!48049)))

(declare-fun call!48050 () Bool)

(assert (=> b!1129410 call!48050))

(declare-datatypes ((V!43009 0))(
  ( (V!43010 (val!14262 Int)) )
))
(declare-fun zeroValue!944 () V!43009)

(declare-fun c!109835 () Bool)

(declare-datatypes ((tuple2!18048 0))(
  ( (tuple2!18049 (_1!9034 (_ BitVec 64)) (_2!9034 V!43009)) )
))
(declare-datatypes ((List!24867 0))(
  ( (Nil!24864) (Cons!24863 (h!26072 tuple2!18048) (t!35747 List!24867)) )
))
(declare-datatypes ((ListLongMap!16029 0))(
  ( (ListLongMap!16030 (toList!8030 List!24867)) )
))
(declare-fun lt!501408 () ListLongMap!16029)

(declare-fun call!48052 () ListLongMap!16029)

(declare-fun minValue!944 () V!43009)

(declare-fun c!109833 () Bool)

(declare-fun bm!48043 () Bool)

(declare-fun +!3398 (ListLongMap!16029 tuple2!18048) ListLongMap!16029)

(assert (=> bm!48043 (= call!48052 (+!3398 lt!501408 (ite (or c!109835 c!109833) (tuple2!18049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1129411 () Bool)

(declare-fun res!754801 () Bool)

(declare-fun e!642810 () Bool)

(assert (=> b!1129411 (=> (not res!754801) (not e!642810))))

(declare-datatypes ((array!73640 0))(
  ( (array!73641 (arr!35469 (Array (_ BitVec 32) (_ BitVec 64))) (size!36006 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73640)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13496 0))(
  ( (ValueCellFull!13496 (v!16896 V!43009)) (EmptyCell!13496) )
))
(declare-datatypes ((array!73642 0))(
  ( (array!73643 (arr!35470 (Array (_ BitVec 32) ValueCell!13496)) (size!36007 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73642)

(assert (=> b!1129411 (= res!754801 (and (= (size!36007 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36006 _keys!1208) (size!36007 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129412 () Bool)

(declare-fun e!642809 () Bool)

(declare-fun e!642817 () Bool)

(assert (=> b!1129412 (= e!642809 e!642817)))

(declare-fun res!754799 () Bool)

(assert (=> b!1129412 (=> res!754799 e!642817)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1129412 (= res!754799 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36006 _keys!1208))))))

(declare-fun lt!501400 () Unit!36948)

(declare-fun e!642806 () Unit!36948)

(assert (=> b!1129412 (= lt!501400 e!642806)))

(declare-fun lt!501407 () Bool)

(assert (=> b!1129412 (= c!109835 (and (not lt!501407) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129412 (= lt!501407 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!48044 () Bool)

(declare-fun lt!501414 () ListLongMap!16029)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!48051 () Unit!36948)

(declare-fun addStillContains!697 (ListLongMap!16029 (_ BitVec 64) V!43009 (_ BitVec 64)) Unit!36948)

(assert (=> bm!48044 (= call!48051 (addStillContains!697 (ite c!109835 lt!501414 lt!501408) (ite c!109835 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109833 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109835 minValue!944 (ite c!109833 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1129413 () Bool)

(declare-fun res!754804 () Bool)

(assert (=> b!1129413 (=> (not res!754804) (not e!642810))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73640 (_ BitVec 32)) Bool)

(assert (=> b!1129413 (= res!754804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129414 () Bool)

(declare-fun res!754803 () Bool)

(assert (=> b!1129414 (=> (not res!754803) (not e!642810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129414 (= res!754803 (validMask!0 mask!1564))))

(declare-fun b!1129415 () Bool)

(declare-fun e!642812 () Bool)

(declare-fun tp_is_empty!28411 () Bool)

(assert (=> b!1129415 (= e!642812 tp_is_empty!28411)))

(declare-fun b!1129416 () Bool)

(declare-fun lt!501409 () Unit!36948)

(assert (=> b!1129416 (= e!642806 lt!501409)))

(declare-fun lt!501413 () Unit!36948)

(assert (=> b!1129416 (= lt!501413 (addStillContains!697 lt!501408 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1129416 (= lt!501414 call!48052)))

(declare-fun call!48048 () Bool)

(assert (=> b!1129416 call!48048))

(assert (=> b!1129416 (= lt!501409 call!48051)))

(declare-fun contains!6524 (ListLongMap!16029 (_ BitVec 64)) Bool)

(assert (=> b!1129416 (contains!6524 (+!3398 lt!501414 (tuple2!18049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun mapNonEmpty!44434 () Bool)

(declare-fun mapRes!44434 () Bool)

(declare-fun tp!84347 () Bool)

(declare-fun e!642818 () Bool)

(assert (=> mapNonEmpty!44434 (= mapRes!44434 (and tp!84347 e!642818))))

(declare-fun mapValue!44434 () ValueCell!13496)

(declare-fun mapKey!44434 () (_ BitVec 32))

(declare-fun mapRest!44434 () (Array (_ BitVec 32) ValueCell!13496))

(assert (=> mapNonEmpty!44434 (= (arr!35470 _values!996) (store mapRest!44434 mapKey!44434 mapValue!44434))))

(declare-fun b!1129418 () Bool)

(declare-fun e!642811 () Bool)

(declare-fun e!642808 () Bool)

(assert (=> b!1129418 (= e!642811 e!642808)))

(declare-fun res!754809 () Bool)

(assert (=> b!1129418 (=> res!754809 e!642808)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129418 (= res!754809 (not (= from!1455 i!673)))))

(declare-fun lt!501402 () ListLongMap!16029)

(declare-fun lt!501410 () array!73640)

(declare-fun lt!501404 () array!73642)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4483 (array!73640 array!73642 (_ BitVec 32) (_ BitVec 32) V!43009 V!43009 (_ BitVec 32) Int) ListLongMap!16029)

(assert (=> b!1129418 (= lt!501402 (getCurrentListMapNoExtraKeys!4483 lt!501410 lt!501404 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2560 (Int (_ BitVec 64)) V!43009)

(assert (=> b!1129418 (= lt!501404 (array!73643 (store (arr!35470 _values!996) i!673 (ValueCellFull!13496 (dynLambda!2560 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36007 _values!996)))))

(declare-fun lt!501403 () ListLongMap!16029)

(assert (=> b!1129418 (= lt!501403 (getCurrentListMapNoExtraKeys!4483 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!48047 () ListLongMap!16029)

(declare-fun bm!48045 () Bool)

(assert (=> bm!48045 (= call!48047 (getCurrentListMapNoExtraKeys!4483 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!642813 () Bool)

(declare-fun b!1129419 () Bool)

(declare-fun call!48053 () ListLongMap!16029)

(declare-fun -!1161 (ListLongMap!16029 (_ BitVec 64)) ListLongMap!16029)

(assert (=> b!1129419 (= e!642813 (= call!48053 (-!1161 call!48047 k!934)))))

(declare-fun b!1129420 () Bool)

(assert (=> b!1129420 (= e!642818 tp_is_empty!28411)))

(declare-fun b!1129421 () Bool)

(assert (=> b!1129421 (= e!642813 (= call!48053 call!48047))))

(declare-fun bm!48046 () Bool)

(assert (=> bm!48046 (= call!48049 call!48051)))

(declare-fun b!1129422 () Bool)

(declare-fun res!754802 () Bool)

(declare-fun e!642815 () Bool)

(assert (=> b!1129422 (=> (not res!754802) (not e!642815))))

(declare-datatypes ((List!24868 0))(
  ( (Nil!24865) (Cons!24864 (h!26073 (_ BitVec 64)) (t!35748 List!24868)) )
))
(declare-fun arrayNoDuplicates!0 (array!73640 (_ BitVec 32) List!24868) Bool)

(assert (=> b!1129422 (= res!754802 (arrayNoDuplicates!0 lt!501410 #b00000000000000000000000000000000 Nil!24865))))

(declare-fun b!1129423 () Bool)

(assert (=> b!1129423 call!48050))

(declare-fun lt!501412 () Unit!36948)

(assert (=> b!1129423 (= lt!501412 call!48049)))

(declare-fun e!642804 () Unit!36948)

(assert (=> b!1129423 (= e!642804 lt!501412)))

(declare-fun b!1129424 () Bool)

(declare-fun e!642807 () Bool)

(assert (=> b!1129424 (= e!642807 (and e!642812 mapRes!44434))))

(declare-fun condMapEmpty!44434 () Bool)

(declare-fun mapDefault!44434 () ValueCell!13496)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98384 () Bool)

(assert start!98384)

(declare-fun b_free!23953 () Bool)

(declare-fun b_next!23953 () Bool)

(assert (=> start!98384 (= b_free!23953 (not b_next!23953))))

(declare-fun tp!84570 () Bool)

(declare-fun b_and!38769 () Bool)

(assert (=> start!98384 (= tp!84570 b_and!38769)))

(declare-fun res!756665 () Bool)

(declare-fun e!644877 () Bool)

(assert (=> start!98384 (=> (not res!756665) (not e!644877))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73788 0))(
  ( (array!73789 (arr!35541 (Array (_ BitVec 32) (_ BitVec 64))) (size!36078 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73788)

(assert (=> start!98384 (= res!756665 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36078 _keys!1208))))))

(assert (=> start!98384 e!644877))

(declare-fun tp_is_empty!28483 () Bool)

(assert (=> start!98384 tp_is_empty!28483))

(declare-fun array_inv!27128 (array!73788) Bool)

(assert (=> start!98384 (array_inv!27128 _keys!1208)))

(assert (=> start!98384 true))

(assert (=> start!98384 tp!84570))

(declare-datatypes ((V!43105 0))(
  ( (V!43106 (val!14298 Int)) )
))
(declare-datatypes ((ValueCell!13532 0))(
  ( (ValueCellFull!13532 (v!16936 V!43105)) (EmptyCell!13532) )
))
(declare-datatypes ((array!73790 0))(
  ( (array!73791 (arr!35542 (Array (_ BitVec 32) ValueCell!13532)) (size!36079 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73790)

(declare-fun e!644888 () Bool)

(declare-fun array_inv!27129 (array!73790) Bool)

(assert (=> start!98384 (and (array_inv!27129 _values!996) e!644888)))

(declare-fun b!1133025 () Bool)

(declare-datatypes ((Unit!37069 0))(
  ( (Unit!37070) )
))
(declare-fun e!644874 () Unit!37069)

(declare-fun Unit!37071 () Unit!37069)

(assert (=> b!1133025 (= e!644874 Unit!37071)))

(declare-fun bm!48974 () Bool)

(declare-fun call!48983 () Unit!37069)

(declare-fun call!48981 () Unit!37069)

(assert (=> bm!48974 (= call!48983 call!48981)))

(declare-fun b!1133026 () Bool)

(declare-fun lt!503457 () Unit!37069)

(assert (=> b!1133026 (= e!644874 lt!503457)))

(assert (=> b!1133026 (= lt!503457 call!48983)))

(declare-fun call!48979 () Bool)

(assert (=> b!1133026 call!48979))

(declare-fun zeroValue!944 () V!43105)

(declare-fun c!110498 () Bool)

(declare-fun c!110501 () Bool)

(declare-fun minValue!944 () V!43105)

(declare-datatypes ((tuple2!18118 0))(
  ( (tuple2!18119 (_1!9069 (_ BitVec 64)) (_2!9069 V!43105)) )
))
(declare-datatypes ((List!24931 0))(
  ( (Nil!24928) (Cons!24927 (h!26136 tuple2!18118) (t!35883 List!24931)) )
))
(declare-datatypes ((ListLongMap!16099 0))(
  ( (ListLongMap!16100 (toList!8065 List!24931)) )
))
(declare-fun call!48980 () ListLongMap!16099)

(declare-fun lt!503447 () ListLongMap!16099)

(declare-fun bm!48975 () Bool)

(declare-fun +!3427 (ListLongMap!16099 tuple2!18118) ListLongMap!16099)

(assert (=> bm!48975 (= call!48980 (+!3427 lt!503447 (ite (or c!110501 c!110498) (tuple2!18119 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18119 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133027 () Bool)

(declare-fun e!644879 () Unit!37069)

(declare-fun e!644884 () Unit!37069)

(assert (=> b!1133027 (= e!644879 e!644884)))

(declare-fun lt!503452 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1133027 (= c!110498 (and (not lt!503452) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!44549 () Bool)

(declare-fun mapRes!44549 () Bool)

(assert (=> mapIsEmpty!44549 mapRes!44549))

(declare-fun b!1133028 () Bool)

(declare-fun e!644883 () Bool)

(declare-fun call!48978 () ListLongMap!16099)

(declare-fun call!48982 () ListLongMap!16099)

(assert (=> b!1133028 (= e!644883 (= call!48978 call!48982))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!48976 () Bool)

(declare-fun lt!503448 () array!73788)

(declare-fun lt!503450 () array!73790)

(declare-fun getCurrentListMapNoExtraKeys!4516 (array!73788 array!73790 (_ BitVec 32) (_ BitVec 32) V!43105 V!43105 (_ BitVec 32) Int) ListLongMap!16099)

(assert (=> bm!48976 (= call!48978 (getCurrentListMapNoExtraKeys!4516 lt!503448 lt!503450 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48977 () Bool)

(declare-fun call!48984 () Bool)

(assert (=> bm!48977 (= call!48979 call!48984)))

(declare-fun b!1133029 () Bool)

(declare-fun e!644885 () Bool)

(assert (=> b!1133029 (= e!644877 e!644885)))

(declare-fun res!756669 () Bool)

(assert (=> b!1133029 (=> (not res!756669) (not e!644885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73788 (_ BitVec 32)) Bool)

(assert (=> b!1133029 (= res!756669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503448 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133029 (= lt!503448 (array!73789 (store (arr!35541 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36078 _keys!1208)))))

(declare-fun bm!48978 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!503453 () ListLongMap!16099)

(declare-fun call!48977 () ListLongMap!16099)

(declare-fun contains!6558 (ListLongMap!16099 (_ BitVec 64)) Bool)

(assert (=> bm!48978 (= call!48984 (contains!6558 (ite c!110501 lt!503453 call!48977) k!934))))

(declare-fun b!1133030 () Bool)

(declare-fun res!756674 () Bool)

(assert (=> b!1133030 (=> (not res!756674) (not e!644877))))

(assert (=> b!1133030 (= res!756674 (and (= (size!36079 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36078 _keys!1208) (size!36079 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1133031 () Bool)

(declare-fun e!644880 () Bool)

(assert (=> b!1133031 (= e!644880 tp_is_empty!28483)))

(declare-fun b!1133032 () Bool)

(declare-fun e!644881 () Bool)

(assert (=> b!1133032 (= e!644881 tp_is_empty!28483)))

(declare-fun b!1133033 () Bool)

(declare-fun res!756677 () Bool)

(assert (=> b!1133033 (=> (not res!756677) (not e!644877))))

(assert (=> b!1133033 (= res!756677 (= (select (arr!35541 _keys!1208) i!673) k!934))))

(declare-fun b!1133034 () Bool)

(assert (=> b!1133034 call!48979))

(declare-fun lt!503459 () Unit!37069)

(assert (=> b!1133034 (= lt!503459 call!48983)))

(assert (=> b!1133034 (= e!644884 lt!503459)))

(declare-fun b!1133035 () Bool)

(declare-fun c!110499 () Bool)

(assert (=> b!1133035 (= c!110499 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503452))))

(assert (=> b!1133035 (= e!644884 e!644874)))

(declare-fun b!1133036 () Bool)

(declare-fun lt!503455 () Unit!37069)

(assert (=> b!1133036 (= e!644879 lt!503455)))

(declare-fun lt!503460 () Unit!37069)

(assert (=> b!1133036 (= lt!503460 call!48981)))

(assert (=> b!1133036 (= lt!503453 call!48980)))

(assert (=> b!1133036 call!48984))

(declare-fun addStillContains!725 (ListLongMap!16099 (_ BitVec 64) V!43105 (_ BitVec 64)) Unit!37069)

(assert (=> b!1133036 (= lt!503455 (addStillContains!725 lt!503453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1133036 (contains!6558 (+!3427 lt!503453 (tuple2!18119 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun mapNonEmpty!44549 () Bool)

(declare-fun tp!84571 () Bool)

(assert (=> mapNonEmpty!44549 (= mapRes!44549 (and tp!84571 e!644880))))

(declare-fun mapKey!44549 () (_ BitVec 32))

(declare-fun mapRest!44549 () (Array (_ BitVec 32) ValueCell!13532))

(declare-fun mapValue!44549 () ValueCell!13532)

(assert (=> mapNonEmpty!44549 (= (arr!35542 _values!996) (store mapRest!44549 mapKey!44549 mapValue!44549))))

(declare-fun b!1133037 () Bool)

(declare-fun res!756672 () Bool)

(assert (=> b!1133037 (=> (not res!756672) (not e!644877))))

(declare-datatypes ((List!24932 0))(
  ( (Nil!24929) (Cons!24928 (h!26137 (_ BitVec 64)) (t!35884 List!24932)) )
))
(declare-fun arrayNoDuplicates!0 (array!73788 (_ BitVec 32) List!24932) Bool)

(assert (=> b!1133037 (= res!756672 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24929))))

(declare-fun b!1133038 () Bool)

(declare-fun res!756668 () Bool)

(assert (=> b!1133038 (=> (not res!756668) (not e!644885))))

(assert (=> b!1133038 (= res!756668 (arrayNoDuplicates!0 lt!503448 #b00000000000000000000000000000000 Nil!24929))))

(declare-fun bm!48979 () Bool)

(assert (=> bm!48979 (= call!48977 call!48980)))

(declare-fun b!1133039 () Bool)

(declare-fun res!756663 () Bool)

(assert (=> b!1133039 (=> (not res!756663) (not e!644877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133039 (= res!756663 (validMask!0 mask!1564))))

(declare-fun b!1133040 () Bool)

(assert (=> b!1133040 (= e!644888 (and e!644881 mapRes!44549))))

(declare-fun condMapEmpty!44549 () Bool)

(declare-fun mapDefault!44549 () ValueCell!13532)


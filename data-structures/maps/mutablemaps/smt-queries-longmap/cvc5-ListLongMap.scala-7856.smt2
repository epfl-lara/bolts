; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97916 () Bool)

(assert start!97916)

(declare-fun b_free!23581 () Bool)

(declare-fun b_next!23581 () Bool)

(assert (=> start!97916 (= b_free!23581 (not b_next!23581))))

(declare-fun tp!83448 () Bool)

(declare-fun b_and!37967 () Bool)

(assert (=> start!97916 (= tp!83448 b_and!37967)))

(declare-fun b!1120713 () Bool)

(declare-fun res!748773 () Bool)

(declare-fun e!638190 () Bool)

(assert (=> b!1120713 (=> (not res!748773) (not e!638190))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73048 0))(
  ( (array!73049 (arr!35173 (Array (_ BitVec 32) (_ BitVec 64))) (size!35710 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73048)

(assert (=> b!1120713 (= res!748773 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35710 _keys!1208))))))

(declare-fun b!1120714 () Bool)

(declare-fun res!748772 () Bool)

(assert (=> b!1120714 (=> (not res!748772) (not e!638190))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120714 (= res!748772 (validMask!0 mask!1564))))

(declare-fun res!748778 () Bool)

(assert (=> start!97916 (=> (not res!748778) (not e!638190))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97916 (= res!748778 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35710 _keys!1208))))))

(assert (=> start!97916 e!638190))

(declare-fun tp_is_empty!28111 () Bool)

(assert (=> start!97916 tp_is_empty!28111))

(declare-fun array_inv!26884 (array!73048) Bool)

(assert (=> start!97916 (array_inv!26884 _keys!1208)))

(assert (=> start!97916 true))

(assert (=> start!97916 tp!83448))

(declare-datatypes ((V!42609 0))(
  ( (V!42610 (val!14112 Int)) )
))
(declare-datatypes ((ValueCell!13346 0))(
  ( (ValueCellFull!13346 (v!16746 V!42609)) (EmptyCell!13346) )
))
(declare-datatypes ((array!73050 0))(
  ( (array!73051 (arr!35174 (Array (_ BitVec 32) ValueCell!13346)) (size!35711 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73050)

(declare-fun e!638185 () Bool)

(declare-fun array_inv!26885 (array!73050) Bool)

(assert (=> start!97916 (and (array_inv!26885 _values!996) e!638185)))

(declare-fun zeroValue!944 () V!42609)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47023 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42609)

(declare-datatypes ((tuple2!17766 0))(
  ( (tuple2!17767 (_1!8893 (_ BitVec 64)) (_2!8893 V!42609)) )
))
(declare-datatypes ((List!24605 0))(
  ( (Nil!24602) (Cons!24601 (h!25810 tuple2!17766) (t!35185 List!24605)) )
))
(declare-datatypes ((ListLongMap!15747 0))(
  ( (ListLongMap!15748 (toList!7889 List!24605)) )
))
(declare-fun call!47026 () ListLongMap!15747)

(declare-fun getCurrentListMapNoExtraKeys!4350 (array!73048 array!73050 (_ BitVec 32) (_ BitVec 32) V!42609 V!42609 (_ BitVec 32) Int) ListLongMap!15747)

(assert (=> bm!47023 (= call!47026 (getCurrentListMapNoExtraKeys!4350 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120715 () Bool)

(declare-fun e!638186 () Bool)

(assert (=> b!1120715 (= e!638186 tp_is_empty!28111)))

(declare-fun b!1120716 () Bool)

(declare-fun res!748782 () Bool)

(assert (=> b!1120716 (=> (not res!748782) (not e!638190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73048 (_ BitVec 32)) Bool)

(assert (=> b!1120716 (= res!748782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120717 () Bool)

(declare-fun e!638187 () Bool)

(declare-fun e!638192 () Bool)

(assert (=> b!1120717 (= e!638187 (not e!638192))))

(declare-fun res!748776 () Bool)

(assert (=> b!1120717 (=> res!748776 e!638192)))

(assert (=> b!1120717 (= res!748776 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120717 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36695 0))(
  ( (Unit!36696) )
))
(declare-fun lt!498102 () Unit!36695)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73048 (_ BitVec 64) (_ BitVec 32)) Unit!36695)

(assert (=> b!1120717 (= lt!498102 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120718 () Bool)

(declare-fun res!748774 () Bool)

(assert (=> b!1120718 (=> (not res!748774) (not e!638190))))

(assert (=> b!1120718 (= res!748774 (and (= (size!35711 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35710 _keys!1208) (size!35711 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120719 () Bool)

(declare-fun res!748780 () Bool)

(assert (=> b!1120719 (=> (not res!748780) (not e!638190))))

(declare-datatypes ((List!24606 0))(
  ( (Nil!24603) (Cons!24602 (h!25811 (_ BitVec 64)) (t!35186 List!24606)) )
))
(declare-fun arrayNoDuplicates!0 (array!73048 (_ BitVec 32) List!24606) Bool)

(assert (=> b!1120719 (= res!748780 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24603))))

(declare-fun b!1120720 () Bool)

(declare-fun res!748781 () Bool)

(assert (=> b!1120720 (=> (not res!748781) (not e!638190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120720 (= res!748781 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43984 () Bool)

(declare-fun mapRes!43984 () Bool)

(declare-fun tp!83447 () Bool)

(declare-fun e!638188 () Bool)

(assert (=> mapNonEmpty!43984 (= mapRes!43984 (and tp!83447 e!638188))))

(declare-fun mapKey!43984 () (_ BitVec 32))

(declare-fun mapRest!43984 () (Array (_ BitVec 32) ValueCell!13346))

(declare-fun mapValue!43984 () ValueCell!13346)

(assert (=> mapNonEmpty!43984 (= (arr!35174 _values!996) (store mapRest!43984 mapKey!43984 mapValue!43984))))

(declare-fun b!1120721 () Bool)

(declare-fun e!638191 () Bool)

(assert (=> b!1120721 (= e!638192 e!638191)))

(declare-fun res!748779 () Bool)

(assert (=> b!1120721 (=> res!748779 e!638191)))

(assert (=> b!1120721 (= res!748779 (not (= from!1455 i!673)))))

(declare-fun lt!498097 () ListLongMap!15747)

(declare-fun lt!498099 () array!73050)

(declare-fun lt!498098 () array!73048)

(assert (=> b!1120721 (= lt!498097 (getCurrentListMapNoExtraKeys!4350 lt!498098 lt!498099 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2451 (Int (_ BitVec 64)) V!42609)

(assert (=> b!1120721 (= lt!498099 (array!73051 (store (arr!35174 _values!996) i!673 (ValueCellFull!13346 (dynLambda!2451 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35711 _values!996)))))

(declare-fun lt!498100 () ListLongMap!15747)

(assert (=> b!1120721 (= lt!498100 (getCurrentListMapNoExtraKeys!4350 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120722 () Bool)

(declare-fun call!47027 () ListLongMap!15747)

(declare-fun e!638189 () Bool)

(declare-fun -!1058 (ListLongMap!15747 (_ BitVec 64)) ListLongMap!15747)

(assert (=> b!1120722 (= e!638189 (= call!47027 (-!1058 call!47026 k!934)))))

(declare-fun b!1120723 () Bool)

(assert (=> b!1120723 (= e!638189 (= call!47027 call!47026))))

(declare-fun b!1120724 () Bool)

(assert (=> b!1120724 (= e!638188 tp_is_empty!28111)))

(declare-fun b!1120725 () Bool)

(declare-fun res!748775 () Bool)

(assert (=> b!1120725 (=> (not res!748775) (not e!638190))))

(assert (=> b!1120725 (= res!748775 (= (select (arr!35173 _keys!1208) i!673) k!934))))

(declare-fun bm!47024 () Bool)

(assert (=> bm!47024 (= call!47027 (getCurrentListMapNoExtraKeys!4350 lt!498098 lt!498099 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120726 () Bool)

(assert (=> b!1120726 (= e!638191 true)))

(assert (=> b!1120726 e!638189))

(declare-fun c!109322 () Bool)

(assert (=> b!1120726 (= c!109322 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498101 () Unit!36695)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!312 (array!73048 array!73050 (_ BitVec 32) (_ BitVec 32) V!42609 V!42609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36695)

(assert (=> b!1120726 (= lt!498101 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!312 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120727 () Bool)

(assert (=> b!1120727 (= e!638190 e!638187)))

(declare-fun res!748777 () Bool)

(assert (=> b!1120727 (=> (not res!748777) (not e!638187))))

(assert (=> b!1120727 (= res!748777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498098 mask!1564))))

(assert (=> b!1120727 (= lt!498098 (array!73049 (store (arr!35173 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35710 _keys!1208)))))

(declare-fun mapIsEmpty!43984 () Bool)

(assert (=> mapIsEmpty!43984 mapRes!43984))

(declare-fun b!1120728 () Bool)

(assert (=> b!1120728 (= e!638185 (and e!638186 mapRes!43984))))

(declare-fun condMapEmpty!43984 () Bool)

(declare-fun mapDefault!43984 () ValueCell!13346)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98114 () Bool)

(assert start!98114)

(declare-fun b_free!23779 () Bool)

(declare-fun b_next!23779 () Bool)

(assert (=> start!98114 (= b_free!23779 (not b_next!23779))))

(declare-fun tp!84042 () Bool)

(declare-fun b_and!38363 () Bool)

(assert (=> start!98114 (= tp!84042 b_and!38363)))

(declare-fun b!1126376 () Bool)

(declare-fun res!752758 () Bool)

(declare-fun e!641179 () Bool)

(assert (=> b!1126376 (=> (not res!752758) (not e!641179))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126376 (= res!752758 (validKeyInArray!0 k!934))))

(declare-fun b!1126377 () Bool)

(declare-fun res!752756 () Bool)

(assert (=> b!1126377 (=> (not res!752756) (not e!641179))))

(declare-datatypes ((array!73440 0))(
  ( (array!73441 (arr!35369 (Array (_ BitVec 32) (_ BitVec 64))) (size!35906 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73440)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42873 0))(
  ( (V!42874 (val!14211 Int)) )
))
(declare-datatypes ((ValueCell!13445 0))(
  ( (ValueCellFull!13445 (v!16845 V!42873)) (EmptyCell!13445) )
))
(declare-datatypes ((array!73442 0))(
  ( (array!73443 (arr!35370 (Array (_ BitVec 32) ValueCell!13445)) (size!35907 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73442)

(assert (=> b!1126377 (= res!752756 (and (= (size!35907 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35906 _keys!1208) (size!35907 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126378 () Bool)

(declare-fun res!752752 () Bool)

(assert (=> b!1126378 (=> (not res!752752) (not e!641179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126378 (= res!752752 (validMask!0 mask!1564))))

(declare-fun b!1126379 () Bool)

(declare-fun res!752754 () Bool)

(assert (=> b!1126379 (=> (not res!752754) (not e!641179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73440 (_ BitVec 32)) Bool)

(assert (=> b!1126379 (= res!752754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun zeroValue!944 () V!42873)

(declare-fun lt!500188 () array!73442)

(declare-datatypes ((tuple2!17954 0))(
  ( (tuple2!17955 (_1!8987 (_ BitVec 64)) (_2!8987 V!42873)) )
))
(declare-datatypes ((List!24781 0))(
  ( (Nil!24778) (Cons!24777 (h!25986 tuple2!17954) (t!35559 List!24781)) )
))
(declare-datatypes ((ListLongMap!15935 0))(
  ( (ListLongMap!15936 (toList!7983 List!24781)) )
))
(declare-fun call!47621 () ListLongMap!15935)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun c!109619 () Bool)

(declare-fun bm!47617 () Bool)

(declare-fun lt!500192 () array!73440)

(declare-fun minValue!944 () V!42873)

(declare-fun getCurrentListMapNoExtraKeys!4442 (array!73440 array!73442 (_ BitVec 32) (_ BitVec 32) V!42873 V!42873 (_ BitVec 32) Int) ListLongMap!15935)

(assert (=> bm!47617 (= call!47621 (getCurrentListMapNoExtraKeys!4442 (ite c!109619 lt!500192 _keys!1208) (ite c!109619 lt!500188 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!752751 () Bool)

(assert (=> start!98114 (=> (not res!752751) (not e!641179))))

(assert (=> start!98114 (= res!752751 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35906 _keys!1208))))))

(assert (=> start!98114 e!641179))

(declare-fun tp_is_empty!28309 () Bool)

(assert (=> start!98114 tp_is_empty!28309))

(declare-fun array_inv!27016 (array!73440) Bool)

(assert (=> start!98114 (array_inv!27016 _keys!1208)))

(assert (=> start!98114 true))

(assert (=> start!98114 tp!84042))

(declare-fun e!641178 () Bool)

(declare-fun array_inv!27017 (array!73442) Bool)

(assert (=> start!98114 (and (array_inv!27017 _values!996) e!641178)))

(declare-fun b!1126380 () Bool)

(declare-fun e!641180 () Bool)

(assert (=> b!1126380 (= e!641180 true)))

(declare-fun lt!500191 () Bool)

(declare-fun contains!6491 (ListLongMap!15935 (_ BitVec 64)) Bool)

(assert (=> b!1126380 (= lt!500191 (contains!6491 (getCurrentListMapNoExtraKeys!4442 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapNonEmpty!44281 () Bool)

(declare-fun mapRes!44281 () Bool)

(declare-fun tp!84041 () Bool)

(declare-fun e!641177 () Bool)

(assert (=> mapNonEmpty!44281 (= mapRes!44281 (and tp!84041 e!641177))))

(declare-fun mapRest!44281 () (Array (_ BitVec 32) ValueCell!13445))

(declare-fun mapValue!44281 () ValueCell!13445)

(declare-fun mapKey!44281 () (_ BitVec 32))

(assert (=> mapNonEmpty!44281 (= (arr!35370 _values!996) (store mapRest!44281 mapKey!44281 mapValue!44281))))

(declare-fun b!1126381 () Bool)

(declare-fun e!641174 () Bool)

(declare-fun e!641183 () Bool)

(assert (=> b!1126381 (= e!641174 e!641183)))

(declare-fun res!752760 () Bool)

(assert (=> b!1126381 (=> res!752760 e!641183)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126381 (= res!752760 (not (= from!1455 i!673)))))

(declare-fun lt!500193 () ListLongMap!15935)

(assert (=> b!1126381 (= lt!500193 (getCurrentListMapNoExtraKeys!4442 lt!500192 lt!500188 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2523 (Int (_ BitVec 64)) V!42873)

(assert (=> b!1126381 (= lt!500188 (array!73443 (store (arr!35370 _values!996) i!673 (ValueCellFull!13445 (dynLambda!2523 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35907 _values!996)))))

(declare-fun lt!500189 () ListLongMap!15935)

(assert (=> b!1126381 (= lt!500189 (getCurrentListMapNoExtraKeys!4442 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126382 () Bool)

(declare-fun e!641176 () Bool)

(assert (=> b!1126382 (= e!641179 e!641176)))

(declare-fun res!752763 () Bool)

(assert (=> b!1126382 (=> (not res!752763) (not e!641176))))

(assert (=> b!1126382 (= res!752763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500192 mask!1564))))

(assert (=> b!1126382 (= lt!500192 (array!73441 (store (arr!35369 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35906 _keys!1208)))))

(declare-fun b!1126383 () Bool)

(declare-fun e!641181 () Bool)

(declare-fun call!47620 () ListLongMap!15935)

(assert (=> b!1126383 (= e!641181 (= call!47620 call!47621))))

(declare-fun bm!47618 () Bool)

(assert (=> bm!47618 (= call!47620 (getCurrentListMapNoExtraKeys!4442 (ite c!109619 _keys!1208 lt!500192) (ite c!109619 _values!996 lt!500188) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126384 () Bool)

(declare-fun res!752761 () Bool)

(assert (=> b!1126384 (=> (not res!752761) (not e!641179))))

(assert (=> b!1126384 (= res!752761 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35906 _keys!1208))))))

(declare-fun b!1126385 () Bool)

(assert (=> b!1126385 (= e!641183 e!641180)))

(declare-fun res!752759 () Bool)

(assert (=> b!1126385 (=> res!752759 e!641180)))

(assert (=> b!1126385 (= res!752759 (not (= (select (arr!35369 _keys!1208) from!1455) k!934)))))

(assert (=> b!1126385 e!641181))

(assert (=> b!1126385 (= c!109619 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36859 0))(
  ( (Unit!36860) )
))
(declare-fun lt!500190 () Unit!36859)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!379 (array!73440 array!73442 (_ BitVec 32) (_ BitVec 32) V!42873 V!42873 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36859)

(assert (=> b!1126385 (= lt!500190 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126386 () Bool)

(declare-fun res!752755 () Bool)

(assert (=> b!1126386 (=> (not res!752755) (not e!641179))))

(declare-datatypes ((List!24782 0))(
  ( (Nil!24779) (Cons!24778 (h!25987 (_ BitVec 64)) (t!35560 List!24782)) )
))
(declare-fun arrayNoDuplicates!0 (array!73440 (_ BitVec 32) List!24782) Bool)

(assert (=> b!1126386 (= res!752755 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24779))))

(declare-fun b!1126387 () Bool)

(declare-fun res!752762 () Bool)

(assert (=> b!1126387 (=> (not res!752762) (not e!641179))))

(assert (=> b!1126387 (= res!752762 (= (select (arr!35369 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!44281 () Bool)

(assert (=> mapIsEmpty!44281 mapRes!44281))

(declare-fun b!1126388 () Bool)

(declare-fun e!641182 () Bool)

(assert (=> b!1126388 (= e!641182 tp_is_empty!28309)))

(declare-fun b!1126389 () Bool)

(assert (=> b!1126389 (= e!641178 (and e!641182 mapRes!44281))))

(declare-fun condMapEmpty!44281 () Bool)

(declare-fun mapDefault!44281 () ValueCell!13445)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98124 () Bool)

(assert start!98124)

(declare-fun b_free!23789 () Bool)

(declare-fun b_next!23789 () Bool)

(assert (=> start!98124 (= b_free!23789 (not b_next!23789))))

(declare-fun tp!84071 () Bool)

(declare-fun b_and!38383 () Bool)

(assert (=> start!98124 (= tp!84071 b_and!38383)))

(declare-fun b!1126656 () Bool)

(declare-fun e!641328 () Bool)

(assert (=> b!1126656 (= e!641328 true)))

(declare-datatypes ((V!42885 0))(
  ( (V!42886 (val!14216 Int)) )
))
(declare-fun zeroValue!944 () V!42885)

(declare-datatypes ((array!73460 0))(
  ( (array!73461 (arr!35379 (Array (_ BitVec 32) (_ BitVec 64))) (size!35916 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73460)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!500292 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13450 0))(
  ( (ValueCellFull!13450 (v!16850 V!42885)) (EmptyCell!13450) )
))
(declare-datatypes ((array!73462 0))(
  ( (array!73463 (arr!35380 (Array (_ BitVec 32) ValueCell!13450)) (size!35917 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73462)

(declare-fun minValue!944 () V!42885)

(declare-datatypes ((tuple2!17964 0))(
  ( (tuple2!17965 (_1!8992 (_ BitVec 64)) (_2!8992 V!42885)) )
))
(declare-datatypes ((List!24791 0))(
  ( (Nil!24788) (Cons!24787 (h!25996 tuple2!17964) (t!35579 List!24791)) )
))
(declare-datatypes ((ListLongMap!15945 0))(
  ( (ListLongMap!15946 (toList!7988 List!24791)) )
))
(declare-fun contains!6495 (ListLongMap!15945 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4447 (array!73460 array!73462 (_ BitVec 32) (_ BitVec 32) V!42885 V!42885 (_ BitVec 32) Int) ListLongMap!15945)

(assert (=> b!1126656 (= lt!500292 (contains!6495 (getCurrentListMapNoExtraKeys!4447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!500294 () array!73460)

(declare-fun lt!500295 () array!73462)

(declare-fun call!47650 () ListLongMap!15945)

(declare-fun bm!47647 () Bool)

(assert (=> bm!47647 (= call!47650 (getCurrentListMapNoExtraKeys!4447 lt!500294 lt!500295 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126657 () Bool)

(declare-fun res!752948 () Bool)

(declare-fun e!641331 () Bool)

(assert (=> b!1126657 (=> (not res!752948) (not e!641331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126657 (= res!752948 (validMask!0 mask!1564))))

(declare-fun b!1126658 () Bool)

(declare-fun e!641325 () Bool)

(assert (=> b!1126658 (= e!641331 e!641325)))

(declare-fun res!752955 () Bool)

(assert (=> b!1126658 (=> (not res!752955) (not e!641325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73460 (_ BitVec 32)) Bool)

(assert (=> b!1126658 (= res!752955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500294 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126658 (= lt!500294 (array!73461 (store (arr!35379 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35916 _keys!1208)))))

(declare-fun b!1126659 () Bool)

(declare-fun res!752946 () Bool)

(assert (=> b!1126659 (=> (not res!752946) (not e!641331))))

(assert (=> b!1126659 (= res!752946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!752954 () Bool)

(assert (=> start!98124 (=> (not res!752954) (not e!641331))))

(assert (=> start!98124 (= res!752954 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35916 _keys!1208))))))

(assert (=> start!98124 e!641331))

(declare-fun tp_is_empty!28319 () Bool)

(assert (=> start!98124 tp_is_empty!28319))

(declare-fun array_inv!27022 (array!73460) Bool)

(assert (=> start!98124 (array_inv!27022 _keys!1208)))

(assert (=> start!98124 true))

(assert (=> start!98124 tp!84071))

(declare-fun e!641326 () Bool)

(declare-fun array_inv!27023 (array!73462) Bool)

(assert (=> start!98124 (and (array_inv!27023 _values!996) e!641326)))

(declare-fun b!1126660 () Bool)

(declare-fun e!641332 () Bool)

(assert (=> b!1126660 (= e!641332 tp_is_empty!28319)))

(declare-fun b!1126661 () Bool)

(declare-fun res!752951 () Bool)

(assert (=> b!1126661 (=> (not res!752951) (not e!641331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126661 (= res!752951 (validKeyInArray!0 k!934))))

(declare-fun b!1126662 () Bool)

(declare-fun res!752952 () Bool)

(assert (=> b!1126662 (=> (not res!752952) (not e!641331))))

(assert (=> b!1126662 (= res!752952 (= (select (arr!35379 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!44296 () Bool)

(declare-fun mapRes!44296 () Bool)

(assert (=> mapIsEmpty!44296 mapRes!44296))

(declare-fun b!1126663 () Bool)

(declare-fun res!752958 () Bool)

(assert (=> b!1126663 (=> (not res!752958) (not e!641325))))

(declare-datatypes ((List!24792 0))(
  ( (Nil!24789) (Cons!24788 (h!25997 (_ BitVec 64)) (t!35580 List!24792)) )
))
(declare-fun arrayNoDuplicates!0 (array!73460 (_ BitVec 32) List!24792) Bool)

(assert (=> b!1126663 (= res!752958 (arrayNoDuplicates!0 lt!500294 #b00000000000000000000000000000000 Nil!24789))))

(declare-fun b!1126664 () Bool)

(declare-fun res!752949 () Bool)

(assert (=> b!1126664 (=> (not res!752949) (not e!641331))))

(assert (=> b!1126664 (= res!752949 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24789))))

(declare-fun b!1126665 () Bool)

(declare-fun res!752957 () Bool)

(assert (=> b!1126665 (=> (not res!752957) (not e!641331))))

(assert (=> b!1126665 (= res!752957 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35916 _keys!1208))))))

(declare-fun b!1126666 () Bool)

(declare-fun e!641330 () Bool)

(declare-fun e!641327 () Bool)

(assert (=> b!1126666 (= e!641330 e!641327)))

(declare-fun res!752953 () Bool)

(assert (=> b!1126666 (=> res!752953 e!641327)))

(assert (=> b!1126666 (= res!752953 (not (= from!1455 i!673)))))

(declare-fun lt!500293 () ListLongMap!15945)

(assert (=> b!1126666 (= lt!500293 (getCurrentListMapNoExtraKeys!4447 lt!500294 lt!500295 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2527 (Int (_ BitVec 64)) V!42885)

(assert (=> b!1126666 (= lt!500295 (array!73463 (store (arr!35380 _values!996) i!673 (ValueCellFull!13450 (dynLambda!2527 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35917 _values!996)))))

(declare-fun lt!500296 () ListLongMap!15945)

(assert (=> b!1126666 (= lt!500296 (getCurrentListMapNoExtraKeys!4447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!44296 () Bool)

(declare-fun tp!84072 () Bool)

(declare-fun e!641329 () Bool)

(assert (=> mapNonEmpty!44296 (= mapRes!44296 (and tp!84072 e!641329))))

(declare-fun mapValue!44296 () ValueCell!13450)

(declare-fun mapRest!44296 () (Array (_ BitVec 32) ValueCell!13450))

(declare-fun mapKey!44296 () (_ BitVec 32))

(assert (=> mapNonEmpty!44296 (= (arr!35380 _values!996) (store mapRest!44296 mapKey!44296 mapValue!44296))))

(declare-fun b!1126667 () Bool)

(assert (=> b!1126667 (= e!641327 e!641328)))

(declare-fun res!752947 () Bool)

(assert (=> b!1126667 (=> res!752947 e!641328)))

(assert (=> b!1126667 (= res!752947 (not (= (select (arr!35379 _keys!1208) from!1455) k!934)))))

(declare-fun e!641333 () Bool)

(assert (=> b!1126667 e!641333))

(declare-fun c!109634 () Bool)

(assert (=> b!1126667 (= c!109634 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36869 0))(
  ( (Unit!36870) )
))
(declare-fun lt!500297 () Unit!36869)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!383 (array!73460 array!73462 (_ BitVec 32) (_ BitVec 32) V!42885 V!42885 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36869)

(assert (=> b!1126667 (= lt!500297 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!383 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126668 () Bool)

(assert (=> b!1126668 (= e!641329 tp_is_empty!28319)))

(declare-fun call!47651 () ListLongMap!15945)

(declare-fun bm!47648 () Bool)

(assert (=> bm!47648 (= call!47651 (getCurrentListMapNoExtraKeys!4447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126669 () Bool)

(declare-fun -!1128 (ListLongMap!15945 (_ BitVec 64)) ListLongMap!15945)

(assert (=> b!1126669 (= e!641333 (= call!47650 (-!1128 call!47651 k!934)))))

(declare-fun b!1126670 () Bool)

(assert (=> b!1126670 (= e!641326 (and e!641332 mapRes!44296))))

(declare-fun condMapEmpty!44296 () Bool)

(declare-fun mapDefault!44296 () ValueCell!13450)


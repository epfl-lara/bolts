; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98022 () Bool)

(assert start!98022)

(declare-fun b_free!23687 () Bool)

(declare-fun b_next!23687 () Bool)

(assert (=> start!98022 (= b_free!23687 (not b_next!23687))))

(declare-fun tp!83766 () Bool)

(declare-fun b_and!38179 () Bool)

(assert (=> start!98022 (= tp!83766 b_and!38179)))

(declare-fun b!1123620 () Bool)

(declare-fun e!639712 () Bool)

(declare-fun e!639713 () Bool)

(assert (=> b!1123620 (= e!639712 e!639713)))

(declare-fun res!750781 () Bool)

(assert (=> b!1123620 (=> res!750781 e!639713)))

(declare-datatypes ((array!73260 0))(
  ( (array!73261 (arr!35279 (Array (_ BitVec 32) (_ BitVec 64))) (size!35816 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73260)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1123620 (= res!750781 (not (= (select (arr!35279 _keys!1208) from!1455) k!934)))))

(declare-fun e!639710 () Bool)

(assert (=> b!1123620 e!639710))

(declare-fun c!109481 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123620 (= c!109481 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42749 0))(
  ( (V!42750 (val!14165 Int)) )
))
(declare-fun zeroValue!944 () V!42749)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36781 0))(
  ( (Unit!36782) )
))
(declare-fun lt!499131 () Unit!36781)

(declare-datatypes ((ValueCell!13399 0))(
  ( (ValueCellFull!13399 (v!16799 V!42749)) (EmptyCell!13399) )
))
(declare-datatypes ((array!73262 0))(
  ( (array!73263 (arr!35280 (Array (_ BitVec 32) ValueCell!13399)) (size!35817 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73262)

(declare-fun minValue!944 () V!42749)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!348 (array!73260 array!73262 (_ BitVec 32) (_ BitVec 32) V!42749 V!42749 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36781)

(assert (=> b!1123620 (= lt!499131 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123621 () Bool)

(declare-fun res!750782 () Bool)

(declare-fun e!639706 () Bool)

(assert (=> b!1123621 (=> (not res!750782) (not e!639706))))

(assert (=> b!1123621 (= res!750782 (and (= (size!35817 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35816 _keys!1208) (size!35817 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44143 () Bool)

(declare-fun mapRes!44143 () Bool)

(declare-fun tp!83765 () Bool)

(declare-fun e!639705 () Bool)

(assert (=> mapNonEmpty!44143 (= mapRes!44143 (and tp!83765 e!639705))))

(declare-fun mapRest!44143 () (Array (_ BitVec 32) ValueCell!13399))

(declare-fun mapKey!44143 () (_ BitVec 32))

(declare-fun mapValue!44143 () ValueCell!13399)

(assert (=> mapNonEmpty!44143 (= (arr!35280 _values!996) (store mapRest!44143 mapKey!44143 mapValue!44143))))

(declare-fun b!1123622 () Bool)

(declare-fun e!639704 () Bool)

(declare-fun e!639709 () Bool)

(assert (=> b!1123622 (= e!639704 (not e!639709))))

(declare-fun res!750789 () Bool)

(assert (=> b!1123622 (=> res!750789 e!639709)))

(assert (=> b!1123622 (= res!750789 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123622 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499134 () Unit!36781)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73260 (_ BitVec 64) (_ BitVec 32)) Unit!36781)

(assert (=> b!1123622 (= lt!499134 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1123623 () Bool)

(assert (=> b!1123623 (= e!639706 e!639704)))

(declare-fun res!750780 () Bool)

(assert (=> b!1123623 (=> (not res!750780) (not e!639704))))

(declare-fun lt!499135 () array!73260)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73260 (_ BitVec 32)) Bool)

(assert (=> b!1123623 (= res!750780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499135 mask!1564))))

(assert (=> b!1123623 (= lt!499135 (array!73261 (store (arr!35279 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35816 _keys!1208)))))

(declare-fun mapIsEmpty!44143 () Bool)

(assert (=> mapIsEmpty!44143 mapRes!44143))

(declare-fun b!1123624 () Bool)

(declare-datatypes ((tuple2!17866 0))(
  ( (tuple2!17867 (_1!8943 (_ BitVec 64)) (_2!8943 V!42749)) )
))
(declare-datatypes ((List!24700 0))(
  ( (Nil!24697) (Cons!24696 (h!25905 tuple2!17866) (t!35386 List!24700)) )
))
(declare-datatypes ((ListLongMap!15847 0))(
  ( (ListLongMap!15848 (toList!7939 List!24700)) )
))
(declare-fun call!47345 () ListLongMap!15847)

(declare-fun call!47344 () ListLongMap!15847)

(declare-fun -!1095 (ListLongMap!15847 (_ BitVec 64)) ListLongMap!15847)

(assert (=> b!1123624 (= e!639710 (= call!47345 (-!1095 call!47344 k!934)))))

(declare-fun b!1123625 () Bool)

(declare-fun res!750787 () Bool)

(assert (=> b!1123625 (=> (not res!750787) (not e!639706))))

(declare-datatypes ((List!24701 0))(
  ( (Nil!24698) (Cons!24697 (h!25906 (_ BitVec 64)) (t!35387 List!24701)) )
))
(declare-fun arrayNoDuplicates!0 (array!73260 (_ BitVec 32) List!24701) Bool)

(assert (=> b!1123625 (= res!750787 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24698))))

(declare-fun b!1123626 () Bool)

(assert (=> b!1123626 (= e!639709 e!639712)))

(declare-fun res!750785 () Bool)

(assert (=> b!1123626 (=> res!750785 e!639712)))

(assert (=> b!1123626 (= res!750785 (not (= from!1455 i!673)))))

(declare-fun lt!499132 () ListLongMap!15847)

(declare-fun lt!499136 () array!73262)

(declare-fun getCurrentListMapNoExtraKeys!4399 (array!73260 array!73262 (_ BitVec 32) (_ BitVec 32) V!42749 V!42749 (_ BitVec 32) Int) ListLongMap!15847)

(assert (=> b!1123626 (= lt!499132 (getCurrentListMapNoExtraKeys!4399 lt!499135 lt!499136 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2491 (Int (_ BitVec 64)) V!42749)

(assert (=> b!1123626 (= lt!499136 (array!73263 (store (arr!35280 _values!996) i!673 (ValueCellFull!13399 (dynLambda!2491 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35817 _values!996)))))

(declare-fun lt!499133 () ListLongMap!15847)

(assert (=> b!1123626 (= lt!499133 (getCurrentListMapNoExtraKeys!4399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1123628 () Bool)

(declare-fun res!750778 () Bool)

(assert (=> b!1123628 (=> (not res!750778) (not e!639706))))

(assert (=> b!1123628 (= res!750778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123629 () Bool)

(assert (=> b!1123629 (= e!639710 (= call!47345 call!47344))))

(declare-fun b!1123630 () Bool)

(assert (=> b!1123630 (= e!639713 true)))

(declare-fun lt!499137 () Bool)

(declare-fun contains!6454 (ListLongMap!15847 (_ BitVec 64)) Bool)

(assert (=> b!1123630 (= lt!499137 (contains!6454 (getCurrentListMapNoExtraKeys!4399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun bm!47341 () Bool)

(assert (=> bm!47341 (= call!47344 (getCurrentListMapNoExtraKeys!4399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123631 () Bool)

(declare-fun res!750788 () Bool)

(assert (=> b!1123631 (=> (not res!750788) (not e!639706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123631 (= res!750788 (validMask!0 mask!1564))))

(declare-fun bm!47342 () Bool)

(assert (=> bm!47342 (= call!47345 (getCurrentListMapNoExtraKeys!4399 lt!499135 lt!499136 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123627 () Bool)

(declare-fun res!750779 () Bool)

(assert (=> b!1123627 (=> (not res!750779) (not e!639706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123627 (= res!750779 (validKeyInArray!0 k!934))))

(declare-fun res!750784 () Bool)

(assert (=> start!98022 (=> (not res!750784) (not e!639706))))

(assert (=> start!98022 (= res!750784 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35816 _keys!1208))))))

(assert (=> start!98022 e!639706))

(declare-fun tp_is_empty!28217 () Bool)

(assert (=> start!98022 tp_is_empty!28217))

(declare-fun array_inv!26958 (array!73260) Bool)

(assert (=> start!98022 (array_inv!26958 _keys!1208)))

(assert (=> start!98022 true))

(assert (=> start!98022 tp!83766))

(declare-fun e!639707 () Bool)

(declare-fun array_inv!26959 (array!73262) Bool)

(assert (=> start!98022 (and (array_inv!26959 _values!996) e!639707)))

(declare-fun b!1123632 () Bool)

(declare-fun e!639711 () Bool)

(assert (=> b!1123632 (= e!639707 (and e!639711 mapRes!44143))))

(declare-fun condMapEmpty!44143 () Bool)

(declare-fun mapDefault!44143 () ValueCell!13399)


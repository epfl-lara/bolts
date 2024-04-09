; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98196 () Bool)

(assert start!98196)

(declare-fun b_free!23861 () Bool)

(declare-fun b_next!23861 () Bool)

(assert (=> start!98196 (= b_free!23861 (not b_next!23861))))

(declare-fun tp!84287 () Bool)

(declare-fun b_and!38527 () Bool)

(assert (=> start!98196 (= tp!84287 b_and!38527)))

(declare-datatypes ((array!73600 0))(
  ( (array!73601 (arr!35449 (Array (_ BitVec 32) (_ BitVec 64))) (size!35986 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73600)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!642412 () Bool)

(declare-fun b!1128689 () Bool)

(assert (=> b!1128689 (= e!642412 (or (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35986 _keys!1208)))))))

(declare-fun b!1128690 () Bool)

(declare-fun e!642405 () Bool)

(declare-datatypes ((V!42981 0))(
  ( (V!42982 (val!14252 Int)) )
))
(declare-datatypes ((tuple2!18028 0))(
  ( (tuple2!18029 (_1!9024 (_ BitVec 64)) (_2!9024 V!42981)) )
))
(declare-datatypes ((List!24848 0))(
  ( (Nil!24845) (Cons!24844 (h!26053 tuple2!18028) (t!35708 List!24848)) )
))
(declare-datatypes ((ListLongMap!16009 0))(
  ( (ListLongMap!16010 (toList!8020 List!24848)) )
))
(declare-fun call!47867 () ListLongMap!16009)

(declare-fun call!47866 () ListLongMap!16009)

(assert (=> b!1128690 (= e!642405 (= call!47867 call!47866))))

(declare-fun res!754378 () Bool)

(declare-fun e!642404 () Bool)

(assert (=> start!98196 (=> (not res!754378) (not e!642404))))

(assert (=> start!98196 (= res!754378 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35986 _keys!1208))))))

(assert (=> start!98196 e!642404))

(declare-fun tp_is_empty!28391 () Bool)

(assert (=> start!98196 tp_is_empty!28391))

(declare-fun array_inv!27064 (array!73600) Bool)

(assert (=> start!98196 (array_inv!27064 _keys!1208)))

(assert (=> start!98196 true))

(assert (=> start!98196 tp!84287))

(declare-datatypes ((ValueCell!13486 0))(
  ( (ValueCellFull!13486 (v!16886 V!42981)) (EmptyCell!13486) )
))
(declare-datatypes ((array!73602 0))(
  ( (array!73603 (arr!35450 (Array (_ BitVec 32) ValueCell!13486)) (size!35987 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73602)

(declare-fun e!642406 () Bool)

(declare-fun array_inv!27065 (array!73602) Bool)

(assert (=> start!98196 (and (array_inv!27065 _values!996) e!642406)))

(declare-fun b!1128691 () Bool)

(declare-fun res!754374 () Bool)

(assert (=> b!1128691 (=> (not res!754374) (not e!642404))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128691 (= res!754374 (validKeyInArray!0 k!934))))

(declare-fun b!1128692 () Bool)

(declare-fun res!754371 () Bool)

(assert (=> b!1128692 (=> (not res!754371) (not e!642404))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128692 (= res!754371 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!42981)

(declare-fun lt!501033 () array!73600)

(declare-fun bm!47863 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!501036 () array!73602)

(declare-fun minValue!944 () V!42981)

(declare-fun getCurrentListMapNoExtraKeys!4474 (array!73600 array!73602 (_ BitVec 32) (_ BitVec 32) V!42981 V!42981 (_ BitVec 32) Int) ListLongMap!16009)

(assert (=> bm!47863 (= call!47867 (getCurrentListMapNoExtraKeys!4474 lt!501033 lt!501036 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128693 () Bool)

(declare-fun e!642410 () Bool)

(assert (=> b!1128693 (= e!642410 tp_is_empty!28391)))

(declare-fun b!1128694 () Bool)

(declare-fun res!754379 () Bool)

(assert (=> b!1128694 (=> (not res!754379) (not e!642404))))

(declare-datatypes ((List!24849 0))(
  ( (Nil!24846) (Cons!24845 (h!26054 (_ BitVec 64)) (t!35709 List!24849)) )
))
(declare-fun arrayNoDuplicates!0 (array!73600 (_ BitVec 32) List!24849) Bool)

(assert (=> b!1128694 (= res!754379 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24846))))

(declare-fun b!1128695 () Bool)

(declare-fun res!754376 () Bool)

(assert (=> b!1128695 (=> (not res!754376) (not e!642404))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128695 (= res!754376 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35986 _keys!1208))))))

(declare-fun bm!47864 () Bool)

(assert (=> bm!47864 (= call!47866 (getCurrentListMapNoExtraKeys!4474 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128696 () Bool)

(declare-fun -!1155 (ListLongMap!16009 (_ BitVec 64)) ListLongMap!16009)

(assert (=> b!1128696 (= e!642405 (= call!47867 (-!1155 call!47866 k!934)))))

(declare-fun b!1128697 () Bool)

(declare-fun e!642409 () Bool)

(assert (=> b!1128697 (= e!642404 e!642409)))

(declare-fun res!754370 () Bool)

(assert (=> b!1128697 (=> (not res!754370) (not e!642409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73600 (_ BitVec 32)) Bool)

(assert (=> b!1128697 (= res!754370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501033 mask!1564))))

(assert (=> b!1128697 (= lt!501033 (array!73601 (store (arr!35449 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35986 _keys!1208)))))

(declare-fun b!1128698 () Bool)

(declare-fun res!754375 () Bool)

(assert (=> b!1128698 (=> (not res!754375) (not e!642404))))

(assert (=> b!1128698 (= res!754375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128699 () Bool)

(declare-fun res!754377 () Bool)

(assert (=> b!1128699 (=> (not res!754377) (not e!642409))))

(assert (=> b!1128699 (= res!754377 (arrayNoDuplicates!0 lt!501033 #b00000000000000000000000000000000 Nil!24846))))

(declare-fun b!1128700 () Bool)

(declare-fun e!642411 () Bool)

(assert (=> b!1128700 (= e!642409 (not e!642411))))

(declare-fun res!754373 () Bool)

(assert (=> b!1128700 (=> res!754373 e!642411)))

(assert (=> b!1128700 (= res!754373 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128700 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36925 0))(
  ( (Unit!36926) )
))
(declare-fun lt!501035 () Unit!36925)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73600 (_ BitVec 64) (_ BitVec 32)) Unit!36925)

(assert (=> b!1128700 (= lt!501035 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1128701 () Bool)

(declare-fun e!642413 () Bool)

(assert (=> b!1128701 (= e!642411 e!642413)))

(declare-fun res!754372 () Bool)

(assert (=> b!1128701 (=> res!754372 e!642413)))

(assert (=> b!1128701 (= res!754372 (not (= from!1455 i!673)))))

(declare-fun lt!501032 () ListLongMap!16009)

(assert (=> b!1128701 (= lt!501032 (getCurrentListMapNoExtraKeys!4474 lt!501033 lt!501036 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2552 (Int (_ BitVec 64)) V!42981)

(assert (=> b!1128701 (= lt!501036 (array!73603 (store (arr!35450 _values!996) i!673 (ValueCellFull!13486 (dynLambda!2552 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35987 _values!996)))))

(declare-fun lt!501031 () ListLongMap!16009)

(assert (=> b!1128701 (= lt!501031 (getCurrentListMapNoExtraKeys!4474 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!44404 () Bool)

(declare-fun mapRes!44404 () Bool)

(declare-fun tp!84288 () Bool)

(assert (=> mapNonEmpty!44404 (= mapRes!44404 (and tp!84288 e!642410))))

(declare-fun mapValue!44404 () ValueCell!13486)

(declare-fun mapRest!44404 () (Array (_ BitVec 32) ValueCell!13486))

(declare-fun mapKey!44404 () (_ BitVec 32))

(assert (=> mapNonEmpty!44404 (= (arr!35450 _values!996) (store mapRest!44404 mapKey!44404 mapValue!44404))))

(declare-fun b!1128702 () Bool)

(declare-fun res!754369 () Bool)

(assert (=> b!1128702 (=> (not res!754369) (not e!642404))))

(assert (=> b!1128702 (= res!754369 (and (= (size!35987 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35986 _keys!1208) (size!35987 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128703 () Bool)

(declare-fun e!642408 () Bool)

(assert (=> b!1128703 (= e!642408 tp_is_empty!28391)))

(declare-fun mapIsEmpty!44404 () Bool)

(assert (=> mapIsEmpty!44404 mapRes!44404))

(declare-fun b!1128704 () Bool)

(assert (=> b!1128704 (= e!642413 e!642412)))

(declare-fun res!754368 () Bool)

(assert (=> b!1128704 (=> res!754368 e!642412)))

(assert (=> b!1128704 (= res!754368 (not (= (select (arr!35449 _keys!1208) from!1455) k!934)))))

(assert (=> b!1128704 e!642405))

(declare-fun c!109742 () Bool)

(assert (=> b!1128704 (= c!109742 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501034 () Unit!36925)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!408 (array!73600 array!73602 (_ BitVec 32) (_ BitVec 32) V!42981 V!42981 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36925)

(assert (=> b!1128704 (= lt!501034 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!408 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128705 () Bool)

(declare-fun res!754367 () Bool)

(assert (=> b!1128705 (=> (not res!754367) (not e!642404))))

(assert (=> b!1128705 (= res!754367 (= (select (arr!35449 _keys!1208) i!673) k!934))))

(declare-fun b!1128706 () Bool)

(assert (=> b!1128706 (= e!642406 (and e!642408 mapRes!44404))))

(declare-fun condMapEmpty!44404 () Bool)

(declare-fun mapDefault!44404 () ValueCell!13486)


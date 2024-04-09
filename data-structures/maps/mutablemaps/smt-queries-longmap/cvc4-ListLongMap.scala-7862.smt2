; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97956 () Bool)

(assert start!97956)

(declare-fun b_free!23621 () Bool)

(declare-fun b_next!23621 () Bool)

(assert (=> start!97956 (= b_free!23621 (not b_next!23621))))

(declare-fun tp!83567 () Bool)

(declare-fun b_and!38047 () Bool)

(assert (=> start!97956 (= tp!83567 b_and!38047)))

(declare-datatypes ((V!42661 0))(
  ( (V!42662 (val!14132 Int)) )
))
(declare-fun zeroValue!944 () V!42661)

(declare-fun bm!47143 () Bool)

(declare-datatypes ((array!73128 0))(
  ( (array!73129 (arr!35213 (Array (_ BitVec 32) (_ BitVec 64))) (size!35750 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73128)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13366 0))(
  ( (ValueCellFull!13366 (v!16766 V!42661)) (EmptyCell!13366) )
))
(declare-datatypes ((array!73130 0))(
  ( (array!73131 (arr!35214 (Array (_ BitVec 32) ValueCell!13366)) (size!35751 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73130)

(declare-fun minValue!944 () V!42661)

(declare-datatypes ((tuple2!17804 0))(
  ( (tuple2!17805 (_1!8912 (_ BitVec 64)) (_2!8912 V!42661)) )
))
(declare-datatypes ((List!24642 0))(
  ( (Nil!24639) (Cons!24638 (h!25847 tuple2!17804) (t!35262 List!24642)) )
))
(declare-datatypes ((ListLongMap!15785 0))(
  ( (ListLongMap!15786 (toList!7908 List!24642)) )
))
(declare-fun call!47147 () ListLongMap!15785)

(declare-fun getCurrentListMapNoExtraKeys!4369 (array!73128 array!73130 (_ BitVec 32) (_ BitVec 32) V!42661 V!42661 (_ BitVec 32) Int) ListLongMap!15785)

(assert (=> bm!47143 (= call!47147 (getCurrentListMapNoExtraKeys!4369 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121773 () Bool)

(declare-fun res!749498 () Bool)

(declare-fun e!638727 () Bool)

(assert (=> b!1121773 (=> (not res!749498) (not e!638727))))

(declare-datatypes ((List!24643 0))(
  ( (Nil!24640) (Cons!24639 (h!25848 (_ BitVec 64)) (t!35263 List!24643)) )
))
(declare-fun arrayNoDuplicates!0 (array!73128 (_ BitVec 32) List!24643) Bool)

(assert (=> b!1121773 (= res!749498 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24640))))

(declare-fun b!1121774 () Bool)

(declare-fun res!749494 () Bool)

(assert (=> b!1121774 (=> (not res!749494) (not e!638727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121774 (= res!749494 (validMask!0 mask!1564))))

(declare-fun b!1121775 () Bool)

(declare-fun e!638730 () Bool)

(declare-fun e!638728 () Bool)

(assert (=> b!1121775 (= e!638730 (not e!638728))))

(declare-fun res!749492 () Bool)

(assert (=> b!1121775 (=> res!749492 e!638728)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121775 (= res!749492 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121775 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36729 0))(
  ( (Unit!36730) )
))
(declare-fun lt!498458 () Unit!36729)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73128 (_ BitVec 64) (_ BitVec 32)) Unit!36729)

(assert (=> b!1121775 (= lt!498458 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1121776 () Bool)

(declare-fun res!749493 () Bool)

(assert (=> b!1121776 (=> (not res!749493) (not e!638727))))

(assert (=> b!1121776 (= res!749493 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35750 _keys!1208))))))

(declare-fun b!1121777 () Bool)

(declare-fun e!638732 () Bool)

(declare-fun call!47146 () ListLongMap!15785)

(assert (=> b!1121777 (= e!638732 (= call!47146 call!47147))))

(declare-fun b!1121778 () Bool)

(assert (=> b!1121778 (= e!638727 e!638730)))

(declare-fun res!749496 () Bool)

(assert (=> b!1121778 (=> (not res!749496) (not e!638730))))

(declare-fun lt!498457 () array!73128)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73128 (_ BitVec 32)) Bool)

(assert (=> b!1121778 (= res!749496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498457 mask!1564))))

(assert (=> b!1121778 (= lt!498457 (array!73129 (store (arr!35213 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35750 _keys!1208)))))

(declare-fun res!749495 () Bool)

(assert (=> start!97956 (=> (not res!749495) (not e!638727))))

(assert (=> start!97956 (= res!749495 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35750 _keys!1208))))))

(assert (=> start!97956 e!638727))

(declare-fun tp_is_empty!28151 () Bool)

(assert (=> start!97956 tp_is_empty!28151))

(declare-fun array_inv!26918 (array!73128) Bool)

(assert (=> start!97956 (array_inv!26918 _keys!1208)))

(assert (=> start!97956 true))

(assert (=> start!97956 tp!83567))

(declare-fun e!638726 () Bool)

(declare-fun array_inv!26919 (array!73130) Bool)

(assert (=> start!97956 (and (array_inv!26919 _values!996) e!638726)))

(declare-fun b!1121779 () Bool)

(declare-fun res!749502 () Bool)

(assert (=> b!1121779 (=> (not res!749502) (not e!638730))))

(assert (=> b!1121779 (= res!749502 (arrayNoDuplicates!0 lt!498457 #b00000000000000000000000000000000 Nil!24640))))

(declare-fun b!1121780 () Bool)

(declare-fun res!749491 () Bool)

(assert (=> b!1121780 (=> (not res!749491) (not e!638727))))

(assert (=> b!1121780 (= res!749491 (and (= (size!35751 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35750 _keys!1208) (size!35751 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121781 () Bool)

(declare-fun e!638729 () Bool)

(assert (=> b!1121781 (= e!638729 tp_is_empty!28151)))

(declare-fun mapNonEmpty!44044 () Bool)

(declare-fun mapRes!44044 () Bool)

(declare-fun tp!83568 () Bool)

(declare-fun e!638725 () Bool)

(assert (=> mapNonEmpty!44044 (= mapRes!44044 (and tp!83568 e!638725))))

(declare-fun mapRest!44044 () (Array (_ BitVec 32) ValueCell!13366))

(declare-fun mapValue!44044 () ValueCell!13366)

(declare-fun mapKey!44044 () (_ BitVec 32))

(assert (=> mapNonEmpty!44044 (= (arr!35214 _values!996) (store mapRest!44044 mapKey!44044 mapValue!44044))))

(declare-fun b!1121782 () Bool)

(declare-fun res!749501 () Bool)

(assert (=> b!1121782 (=> (not res!749501) (not e!638727))))

(assert (=> b!1121782 (= res!749501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121783 () Bool)

(declare-fun res!749500 () Bool)

(assert (=> b!1121783 (=> (not res!749500) (not e!638727))))

(assert (=> b!1121783 (= res!749500 (= (select (arr!35213 _keys!1208) i!673) k!934))))

(declare-fun lt!498460 () array!73130)

(declare-fun bm!47144 () Bool)

(assert (=> bm!47144 (= call!47146 (getCurrentListMapNoExtraKeys!4369 lt!498457 lt!498460 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121784 () Bool)

(declare-fun e!638724 () Bool)

(assert (=> b!1121784 (= e!638728 e!638724)))

(declare-fun res!749499 () Bool)

(assert (=> b!1121784 (=> res!749499 e!638724)))

(assert (=> b!1121784 (= res!749499 (not (= from!1455 i!673)))))

(declare-fun lt!498461 () ListLongMap!15785)

(assert (=> b!1121784 (= lt!498461 (getCurrentListMapNoExtraKeys!4369 lt!498457 lt!498460 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2468 (Int (_ BitVec 64)) V!42661)

(assert (=> b!1121784 (= lt!498460 (array!73131 (store (arr!35214 _values!996) i!673 (ValueCellFull!13366 (dynLambda!2468 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35751 _values!996)))))

(declare-fun lt!498462 () ListLongMap!15785)

(assert (=> b!1121784 (= lt!498462 (getCurrentListMapNoExtraKeys!4369 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121785 () Bool)

(assert (=> b!1121785 (= e!638724 true)))

(assert (=> b!1121785 e!638732))

(declare-fun c!109382 () Bool)

(assert (=> b!1121785 (= c!109382 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498459 () Unit!36729)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!327 (array!73128 array!73130 (_ BitVec 32) (_ BitVec 32) V!42661 V!42661 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36729)

(assert (=> b!1121785 (= lt!498459 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!327 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121786 () Bool)

(assert (=> b!1121786 (= e!638725 tp_is_empty!28151)))

(declare-fun b!1121787 () Bool)

(declare-fun res!749497 () Bool)

(assert (=> b!1121787 (=> (not res!749497) (not e!638727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121787 (= res!749497 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44044 () Bool)

(assert (=> mapIsEmpty!44044 mapRes!44044))

(declare-fun b!1121788 () Bool)

(assert (=> b!1121788 (= e!638726 (and e!638729 mapRes!44044))))

(declare-fun condMapEmpty!44044 () Bool)

(declare-fun mapDefault!44044 () ValueCell!13366)


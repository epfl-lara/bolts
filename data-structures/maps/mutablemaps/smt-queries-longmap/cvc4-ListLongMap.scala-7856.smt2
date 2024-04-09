; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97920 () Bool)

(assert start!97920)

(declare-fun b_free!23585 () Bool)

(declare-fun b_next!23585 () Bool)

(assert (=> start!97920 (= b_free!23585 (not b_next!23585))))

(declare-fun tp!83460 () Bool)

(declare-fun b_and!37975 () Bool)

(assert (=> start!97920 (= tp!83460 b_and!37975)))

(declare-datatypes ((V!42613 0))(
  ( (V!42614 (val!14114 Int)) )
))
(declare-datatypes ((tuple2!17770 0))(
  ( (tuple2!17771 (_1!8895 (_ BitVec 64)) (_2!8895 V!42613)) )
))
(declare-datatypes ((List!24609 0))(
  ( (Nil!24606) (Cons!24605 (h!25814 tuple2!17770) (t!35193 List!24609)) )
))
(declare-datatypes ((ListLongMap!15751 0))(
  ( (ListLongMap!15752 (toList!7891 List!24609)) )
))
(declare-fun call!47039 () ListLongMap!15751)

(declare-fun b!1120819 () Bool)

(declare-fun e!638239 () Bool)

(declare-fun call!47038 () ListLongMap!15751)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1060 (ListLongMap!15751 (_ BitVec 64)) ListLongMap!15751)

(assert (=> b!1120819 (= e!638239 (= call!47039 (-!1060 call!47038 k!934)))))

(declare-fun mapIsEmpty!43990 () Bool)

(declare-fun mapRes!43990 () Bool)

(assert (=> mapIsEmpty!43990 mapRes!43990))

(declare-fun mapNonEmpty!43990 () Bool)

(declare-fun tp!83459 () Bool)

(declare-fun e!638243 () Bool)

(assert (=> mapNonEmpty!43990 (= mapRes!43990 (and tp!83459 e!638243))))

(declare-datatypes ((ValueCell!13348 0))(
  ( (ValueCellFull!13348 (v!16748 V!42613)) (EmptyCell!13348) )
))
(declare-fun mapValue!43990 () ValueCell!13348)

(declare-fun mapRest!43990 () (Array (_ BitVec 32) ValueCell!13348))

(declare-datatypes ((array!73056 0))(
  ( (array!73057 (arr!35177 (Array (_ BitVec 32) ValueCell!13348)) (size!35714 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73056)

(declare-fun mapKey!43990 () (_ BitVec 32))

(assert (=> mapNonEmpty!43990 (= (arr!35177 _values!996) (store mapRest!43990 mapKey!43990 mapValue!43990))))

(declare-fun b!1120821 () Bool)

(declare-fun e!638242 () Bool)

(declare-fun tp_is_empty!28115 () Bool)

(assert (=> b!1120821 (= e!638242 tp_is_empty!28115)))

(declare-fun b!1120822 () Bool)

(declare-fun res!748849 () Bool)

(declare-fun e!638246 () Bool)

(assert (=> b!1120822 (=> (not res!748849) (not e!638246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120822 (= res!748849 (validKeyInArray!0 k!934))))

(declare-fun b!1120823 () Bool)

(declare-fun e!638238 () Bool)

(assert (=> b!1120823 (= e!638238 true)))

(assert (=> b!1120823 e!638239))

(declare-fun c!109328 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120823 (= c!109328 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42613)

(declare-datatypes ((array!73058 0))(
  ( (array!73059 (arr!35178 (Array (_ BitVec 32) (_ BitVec 64))) (size!35715 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73058)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36699 0))(
  ( (Unit!36700) )
))
(declare-fun lt!498135 () Unit!36699)

(declare-fun minValue!944 () V!42613)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!314 (array!73058 array!73056 (_ BitVec 32) (_ BitVec 32) V!42613 V!42613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36699)

(assert (=> b!1120823 (= lt!498135 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!314 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120824 () Bool)

(declare-fun res!748845 () Bool)

(declare-fun e!638240 () Bool)

(assert (=> b!1120824 (=> (not res!748845) (not e!638240))))

(declare-fun lt!498133 () array!73058)

(declare-datatypes ((List!24610 0))(
  ( (Nil!24607) (Cons!24606 (h!25815 (_ BitVec 64)) (t!35194 List!24610)) )
))
(declare-fun arrayNoDuplicates!0 (array!73058 (_ BitVec 32) List!24610) Bool)

(assert (=> b!1120824 (= res!748845 (arrayNoDuplicates!0 lt!498133 #b00000000000000000000000000000000 Nil!24607))))

(declare-fun b!1120825 () Bool)

(declare-fun res!748852 () Bool)

(assert (=> b!1120825 (=> (not res!748852) (not e!638246))))

(assert (=> b!1120825 (= res!748852 (and (= (size!35714 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35715 _keys!1208) (size!35714 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120826 () Bool)

(declare-fun res!748851 () Bool)

(assert (=> b!1120826 (=> (not res!748851) (not e!638246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73058 (_ BitVec 32)) Bool)

(assert (=> b!1120826 (= res!748851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120827 () Bool)

(declare-fun res!748844 () Bool)

(assert (=> b!1120827 (=> (not res!748844) (not e!638246))))

(assert (=> b!1120827 (= res!748844 (= (select (arr!35178 _keys!1208) i!673) k!934))))

(declare-fun b!1120828 () Bool)

(declare-fun res!748846 () Bool)

(assert (=> b!1120828 (=> (not res!748846) (not e!638246))))

(assert (=> b!1120828 (= res!748846 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35715 _keys!1208))))))

(declare-fun b!1120829 () Bool)

(assert (=> b!1120829 (= e!638246 e!638240)))

(declare-fun res!748854 () Bool)

(assert (=> b!1120829 (=> (not res!748854) (not e!638240))))

(assert (=> b!1120829 (= res!748854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498133 mask!1564))))

(assert (=> b!1120829 (= lt!498133 (array!73059 (store (arr!35178 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35715 _keys!1208)))))

(declare-fun lt!498137 () array!73056)

(declare-fun bm!47035 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4352 (array!73058 array!73056 (_ BitVec 32) (_ BitVec 32) V!42613 V!42613 (_ BitVec 32) Int) ListLongMap!15751)

(assert (=> bm!47035 (= call!47039 (getCurrentListMapNoExtraKeys!4352 lt!498133 lt!498137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120830 () Bool)

(declare-fun e!638244 () Bool)

(assert (=> b!1120830 (= e!638240 (not e!638244))))

(declare-fun res!748853 () Bool)

(assert (=> b!1120830 (=> res!748853 e!638244)))

(assert (=> b!1120830 (= res!748853 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120830 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!498138 () Unit!36699)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73058 (_ BitVec 64) (_ BitVec 32)) Unit!36699)

(assert (=> b!1120830 (= lt!498138 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120820 () Bool)

(assert (=> b!1120820 (= e!638239 (= call!47039 call!47038))))

(declare-fun res!748850 () Bool)

(assert (=> start!97920 (=> (not res!748850) (not e!638246))))

(assert (=> start!97920 (= res!748850 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35715 _keys!1208))))))

(assert (=> start!97920 e!638246))

(assert (=> start!97920 tp_is_empty!28115))

(declare-fun array_inv!26888 (array!73058) Bool)

(assert (=> start!97920 (array_inv!26888 _keys!1208)))

(assert (=> start!97920 true))

(assert (=> start!97920 tp!83460))

(declare-fun e!638241 () Bool)

(declare-fun array_inv!26889 (array!73056) Bool)

(assert (=> start!97920 (and (array_inv!26889 _values!996) e!638241)))

(declare-fun b!1120831 () Bool)

(declare-fun res!748843 () Bool)

(assert (=> b!1120831 (=> (not res!748843) (not e!638246))))

(assert (=> b!1120831 (= res!748843 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24607))))

(declare-fun b!1120832 () Bool)

(assert (=> b!1120832 (= e!638244 e!638238)))

(declare-fun res!748848 () Bool)

(assert (=> b!1120832 (=> res!748848 e!638238)))

(assert (=> b!1120832 (= res!748848 (not (= from!1455 i!673)))))

(declare-fun lt!498136 () ListLongMap!15751)

(assert (=> b!1120832 (= lt!498136 (getCurrentListMapNoExtraKeys!4352 lt!498133 lt!498137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2453 (Int (_ BitVec 64)) V!42613)

(assert (=> b!1120832 (= lt!498137 (array!73057 (store (arr!35177 _values!996) i!673 (ValueCellFull!13348 (dynLambda!2453 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35714 _values!996)))))

(declare-fun lt!498134 () ListLongMap!15751)

(assert (=> b!1120832 (= lt!498134 (getCurrentListMapNoExtraKeys!4352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120833 () Bool)

(declare-fun res!748847 () Bool)

(assert (=> b!1120833 (=> (not res!748847) (not e!638246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120833 (= res!748847 (validMask!0 mask!1564))))

(declare-fun bm!47036 () Bool)

(assert (=> bm!47036 (= call!47038 (getCurrentListMapNoExtraKeys!4352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120834 () Bool)

(assert (=> b!1120834 (= e!638241 (and e!638242 mapRes!43990))))

(declare-fun condMapEmpty!43990 () Bool)

(declare-fun mapDefault!43990 () ValueCell!13348)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97922 () Bool)

(assert start!97922)

(declare-fun b_free!23587 () Bool)

(declare-fun b_next!23587 () Bool)

(assert (=> start!97922 (= b_free!23587 (not b_next!23587))))

(declare-fun tp!83465 () Bool)

(declare-fun b_and!37979 () Bool)

(assert (=> start!97922 (= tp!83465 b_and!37979)))

(declare-fun mapIsEmpty!43993 () Bool)

(declare-fun mapRes!43993 () Bool)

(assert (=> mapIsEmpty!43993 mapRes!43993))

(declare-fun b!1120872 () Bool)

(declare-fun res!748886 () Bool)

(declare-fun e!638265 () Bool)

(assert (=> b!1120872 (=> (not res!748886) (not e!638265))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73060 0))(
  ( (array!73061 (arr!35179 (Array (_ BitVec 32) (_ BitVec 64))) (size!35716 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73060)

(assert (=> b!1120872 (= res!748886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35716 _keys!1208))))))

(declare-fun b!1120873 () Bool)

(declare-fun res!748881 () Bool)

(assert (=> b!1120873 (=> (not res!748881) (not e!638265))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1120873 (= res!748881 (= (select (arr!35179 _keys!1208) i!673) k!934))))

(declare-fun b!1120874 () Bool)

(declare-fun e!638268 () Bool)

(declare-fun e!638270 () Bool)

(assert (=> b!1120874 (= e!638268 e!638270)))

(declare-fun res!748890 () Bool)

(assert (=> b!1120874 (=> res!748890 e!638270)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1120874 (= res!748890 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42617 0))(
  ( (V!42618 (val!14115 Int)) )
))
(declare-fun zeroValue!944 () V!42617)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13349 0))(
  ( (ValueCellFull!13349 (v!16749 V!42617)) (EmptyCell!13349) )
))
(declare-datatypes ((array!73062 0))(
  ( (array!73063 (arr!35180 (Array (_ BitVec 32) ValueCell!13349)) (size!35717 (_ BitVec 32))) )
))
(declare-fun lt!498156 () array!73062)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17772 0))(
  ( (tuple2!17773 (_1!8896 (_ BitVec 64)) (_2!8896 V!42617)) )
))
(declare-datatypes ((List!24611 0))(
  ( (Nil!24608) (Cons!24607 (h!25816 tuple2!17772) (t!35197 List!24611)) )
))
(declare-datatypes ((ListLongMap!15753 0))(
  ( (ListLongMap!15754 (toList!7892 List!24611)) )
))
(declare-fun lt!498151 () ListLongMap!15753)

(declare-fun minValue!944 () V!42617)

(declare-fun lt!498152 () array!73060)

(declare-fun getCurrentListMapNoExtraKeys!4353 (array!73060 array!73062 (_ BitVec 32) (_ BitVec 32) V!42617 V!42617 (_ BitVec 32) Int) ListLongMap!15753)

(assert (=> b!1120874 (= lt!498151 (getCurrentListMapNoExtraKeys!4353 lt!498152 lt!498156 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73062)

(declare-fun dynLambda!2454 (Int (_ BitVec 64)) V!42617)

(assert (=> b!1120874 (= lt!498156 (array!73063 (store (arr!35180 _values!996) i!673 (ValueCellFull!13349 (dynLambda!2454 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35717 _values!996)))))

(declare-fun lt!498154 () ListLongMap!15753)

(assert (=> b!1120874 (= lt!498154 (getCurrentListMapNoExtraKeys!4353 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120875 () Bool)

(declare-fun res!748884 () Bool)

(assert (=> b!1120875 (=> (not res!748884) (not e!638265))))

(declare-datatypes ((List!24612 0))(
  ( (Nil!24609) (Cons!24608 (h!25817 (_ BitVec 64)) (t!35198 List!24612)) )
))
(declare-fun arrayNoDuplicates!0 (array!73060 (_ BitVec 32) List!24612) Bool)

(assert (=> b!1120875 (= res!748884 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24609))))

(declare-fun call!47044 () ListLongMap!15753)

(declare-fun bm!47041 () Bool)

(assert (=> bm!47041 (= call!47044 (getCurrentListMapNoExtraKeys!4353 lt!498152 lt!498156 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120876 () Bool)

(declare-fun e!638269 () Bool)

(assert (=> b!1120876 (= e!638265 e!638269)))

(declare-fun res!748889 () Bool)

(assert (=> b!1120876 (=> (not res!748889) (not e!638269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73060 (_ BitVec 32)) Bool)

(assert (=> b!1120876 (= res!748889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498152 mask!1564))))

(assert (=> b!1120876 (= lt!498152 (array!73061 (store (arr!35179 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35716 _keys!1208)))))

(declare-fun b!1120877 () Bool)

(declare-fun res!748882 () Bool)

(assert (=> b!1120877 (=> (not res!748882) (not e!638265))))

(assert (=> b!1120877 (= res!748882 (and (= (size!35717 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35716 _keys!1208) (size!35717 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120878 () Bool)

(declare-fun e!638267 () Bool)

(declare-fun e!638272 () Bool)

(assert (=> b!1120878 (= e!638267 (and e!638272 mapRes!43993))))

(declare-fun condMapEmpty!43993 () Bool)

(declare-fun mapDefault!43993 () ValueCell!13349)


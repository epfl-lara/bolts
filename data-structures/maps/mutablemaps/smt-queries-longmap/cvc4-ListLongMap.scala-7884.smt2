; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98088 () Bool)

(assert start!98088)

(declare-fun b_free!23753 () Bool)

(declare-fun b_next!23753 () Bool)

(assert (=> start!98088 (= b_free!23753 (not b_next!23753))))

(declare-fun tp!83963 () Bool)

(declare-fun b_and!38311 () Bool)

(assert (=> start!98088 (= tp!83963 b_and!38311)))

(declare-fun b!1125648 () Bool)

(declare-fun res!752254 () Bool)

(declare-fun e!640793 () Bool)

(assert (=> b!1125648 (=> (not res!752254) (not e!640793))))

(declare-datatypes ((array!73388 0))(
  ( (array!73389 (arr!35343 (Array (_ BitVec 32) (_ BitVec 64))) (size!35880 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73388)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73388 (_ BitVec 32)) Bool)

(assert (=> b!1125648 (= res!752254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125649 () Bool)

(declare-fun res!752244 () Bool)

(assert (=> b!1125649 (=> (not res!752244) (not e!640793))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125649 (= res!752244 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!44242 () Bool)

(declare-fun mapRes!44242 () Bool)

(declare-fun tp!83964 () Bool)

(declare-fun e!640790 () Bool)

(assert (=> mapNonEmpty!44242 (= mapRes!44242 (and tp!83964 e!640790))))

(declare-datatypes ((V!42837 0))(
  ( (V!42838 (val!14198 Int)) )
))
(declare-datatypes ((ValueCell!13432 0))(
  ( (ValueCellFull!13432 (v!16832 V!42837)) (EmptyCell!13432) )
))
(declare-fun mapValue!44242 () ValueCell!13432)

(declare-fun mapRest!44242 () (Array (_ BitVec 32) ValueCell!13432))

(declare-fun mapKey!44242 () (_ BitVec 32))

(declare-datatypes ((array!73390 0))(
  ( (array!73391 (arr!35344 (Array (_ BitVec 32) ValueCell!13432)) (size!35881 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73390)

(assert (=> mapNonEmpty!44242 (= (arr!35344 _values!996) (store mapRest!44242 mapKey!44242 mapValue!44242))))

(declare-fun zeroValue!944 () V!42837)

(declare-datatypes ((tuple2!17928 0))(
  ( (tuple2!17929 (_1!8974 (_ BitVec 64)) (_2!8974 V!42837)) )
))
(declare-datatypes ((List!24757 0))(
  ( (Nil!24754) (Cons!24753 (h!25962 tuple2!17928) (t!35509 List!24757)) )
))
(declare-datatypes ((ListLongMap!15909 0))(
  ( (ListLongMap!15910 (toList!7970 List!24757)) )
))
(declare-fun call!47542 () ListLongMap!15909)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42837)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47539 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4429 (array!73388 array!73390 (_ BitVec 32) (_ BitVec 32) V!42837 V!42837 (_ BitVec 32) Int) ListLongMap!15909)

(assert (=> bm!47539 (= call!47542 (getCurrentListMapNoExtraKeys!4429 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125650 () Bool)

(declare-fun res!752252 () Bool)

(assert (=> b!1125650 (=> (not res!752252) (not e!640793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125650 (= res!752252 (validMask!0 mask!1564))))

(declare-fun b!1125651 () Bool)

(declare-fun e!640792 () Bool)

(declare-fun e!640789 () Bool)

(assert (=> b!1125651 (= e!640792 e!640789)))

(declare-fun res!752251 () Bool)

(assert (=> b!1125651 (=> res!752251 e!640789)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125651 (= res!752251 (not (= from!1455 i!673)))))

(declare-fun lt!499920 () array!73388)

(declare-fun lt!499914 () ListLongMap!15909)

(declare-fun lt!499916 () array!73390)

(assert (=> b!1125651 (= lt!499914 (getCurrentListMapNoExtraKeys!4429 lt!499920 lt!499916 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2513 (Int (_ BitVec 64)) V!42837)

(assert (=> b!1125651 (= lt!499916 (array!73391 (store (arr!35344 _values!996) i!673 (ValueCellFull!13432 (dynLambda!2513 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35881 _values!996)))))

(declare-fun lt!499915 () ListLongMap!15909)

(assert (=> b!1125651 (= lt!499915 (getCurrentListMapNoExtraKeys!4429 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125652 () Bool)

(declare-fun e!640787 () Bool)

(declare-fun call!47543 () ListLongMap!15909)

(assert (=> b!1125652 (= e!640787 (= call!47543 call!47542))))

(declare-fun b!1125653 () Bool)

(declare-fun res!752253 () Bool)

(assert (=> b!1125653 (=> (not res!752253) (not e!640793))))

(assert (=> b!1125653 (= res!752253 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35880 _keys!1208))))))

(declare-fun b!1125654 () Bool)

(declare-fun tp_is_empty!28283 () Bool)

(assert (=> b!1125654 (= e!640790 tp_is_empty!28283)))

(declare-fun b!1125656 () Bool)

(declare-fun e!640784 () Bool)

(assert (=> b!1125656 (= e!640784 (not e!640792))))

(declare-fun res!752249 () Bool)

(assert (=> b!1125656 (=> res!752249 e!640792)))

(assert (=> b!1125656 (= res!752249 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125656 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36837 0))(
  ( (Unit!36838) )
))
(declare-fun lt!499919 () Unit!36837)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73388 (_ BitVec 64) (_ BitVec 32)) Unit!36837)

(assert (=> b!1125656 (= lt!499919 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125657 () Bool)

(declare-fun e!640786 () Bool)

(declare-fun e!640785 () Bool)

(assert (=> b!1125657 (= e!640786 (and e!640785 mapRes!44242))))

(declare-fun condMapEmpty!44242 () Bool)

(declare-fun mapDefault!44242 () ValueCell!13432)


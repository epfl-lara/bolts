; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97968 () Bool)

(assert start!97968)

(declare-fun b_free!23633 () Bool)

(declare-fun b_next!23633 () Bool)

(assert (=> start!97968 (= b_free!23633 (not b_next!23633))))

(declare-fun tp!83603 () Bool)

(declare-fun b_and!38071 () Bool)

(assert (=> start!97968 (= tp!83603 b_and!38071)))

(declare-fun b!1122099 () Bool)

(declare-fun e!638903 () Bool)

(declare-fun e!638898 () Bool)

(assert (=> b!1122099 (= e!638903 e!638898)))

(declare-fun res!749719 () Bool)

(assert (=> b!1122099 (=> res!749719 e!638898)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122099 (= res!749719 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42677 0))(
  ( (V!42678 (val!14138 Int)) )
))
(declare-fun zeroValue!944 () V!42677)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13372 0))(
  ( (ValueCellFull!13372 (v!16772 V!42677)) (EmptyCell!13372) )
))
(declare-datatypes ((array!73152 0))(
  ( (array!73153 (arr!35225 (Array (_ BitVec 32) ValueCell!13372)) (size!35762 (_ BitVec 32))) )
))
(declare-fun lt!498573 () array!73152)

(declare-fun minValue!944 () V!42677)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!73154 0))(
  ( (array!73155 (arr!35226 (Array (_ BitVec 32) (_ BitVec 64))) (size!35763 (_ BitVec 32))) )
))
(declare-fun lt!498575 () array!73154)

(declare-datatypes ((tuple2!17816 0))(
  ( (tuple2!17817 (_1!8918 (_ BitVec 64)) (_2!8918 V!42677)) )
))
(declare-datatypes ((List!24654 0))(
  ( (Nil!24651) (Cons!24650 (h!25859 tuple2!17816) (t!35286 List!24654)) )
))
(declare-datatypes ((ListLongMap!15797 0))(
  ( (ListLongMap!15798 (toList!7914 List!24654)) )
))
(declare-fun lt!498578 () ListLongMap!15797)

(declare-fun getCurrentListMapNoExtraKeys!4375 (array!73154 array!73152 (_ BitVec 32) (_ BitVec 32) V!42677 V!42677 (_ BitVec 32) Int) ListLongMap!15797)

(assert (=> b!1122099 (= lt!498578 (getCurrentListMapNoExtraKeys!4375 lt!498575 lt!498573 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73152)

(declare-fun dynLambda!2473 (Int (_ BitVec 64)) V!42677)

(assert (=> b!1122099 (= lt!498573 (array!73153 (store (arr!35225 _values!996) i!673 (ValueCellFull!13372 (dynLambda!2473 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35762 _values!996)))))

(declare-fun _keys!1208 () array!73154)

(declare-fun lt!498574 () ListLongMap!15797)

(assert (=> b!1122099 (= lt!498574 (getCurrentListMapNoExtraKeys!4375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122100 () Bool)

(declare-fun res!749722 () Bool)

(declare-fun e!638894 () Bool)

(assert (=> b!1122100 (=> (not res!749722) (not e!638894))))

(assert (=> b!1122100 (= res!749722 (and (= (size!35762 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35763 _keys!1208) (size!35762 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122101 () Bool)

(declare-fun e!638897 () Bool)

(assert (=> b!1122101 (= e!638898 e!638897)))

(declare-fun res!749715 () Bool)

(assert (=> b!1122101 (=> res!749715 e!638897)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1122101 (= res!749715 (not (= (select (arr!35226 _keys!1208) from!1455) k!934)))))

(declare-fun e!638900 () Bool)

(assert (=> b!1122101 e!638900))

(declare-fun c!109400 () Bool)

(assert (=> b!1122101 (= c!109400 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36739 0))(
  ( (Unit!36740) )
))
(declare-fun lt!498576 () Unit!36739)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!330 (array!73154 array!73152 (_ BitVec 32) (_ BitVec 32) V!42677 V!42677 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36739)

(assert (=> b!1122101 (= lt!498576 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!330 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122102 () Bool)

(declare-fun call!47182 () ListLongMap!15797)

(declare-fun call!47183 () ListLongMap!15797)

(declare-fun -!1077 (ListLongMap!15797 (_ BitVec 64)) ListLongMap!15797)

(assert (=> b!1122102 (= e!638900 (= call!47182 (-!1077 call!47183 k!934)))))

(declare-fun b!1122103 () Bool)

(declare-fun e!638896 () Bool)

(assert (=> b!1122103 (= e!638896 (not e!638903))))

(declare-fun res!749720 () Bool)

(assert (=> b!1122103 (=> res!749720 e!638903)))

(assert (=> b!1122103 (= res!749720 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122103 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!498579 () Unit!36739)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73154 (_ BitVec 64) (_ BitVec 32)) Unit!36739)

(assert (=> b!1122103 (= lt!498579 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!47179 () Bool)

(assert (=> bm!47179 (= call!47182 (getCurrentListMapNoExtraKeys!4375 lt!498575 lt!498573 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122105 () Bool)

(declare-fun res!749725 () Bool)

(assert (=> b!1122105 (=> (not res!749725) (not e!638894))))

(declare-datatypes ((List!24655 0))(
  ( (Nil!24652) (Cons!24651 (h!25860 (_ BitVec 64)) (t!35287 List!24655)) )
))
(declare-fun arrayNoDuplicates!0 (array!73154 (_ BitVec 32) List!24655) Bool)

(assert (=> b!1122105 (= res!749725 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24652))))

(declare-fun b!1122106 () Bool)

(declare-fun res!749721 () Bool)

(assert (=> b!1122106 (=> (not res!749721) (not e!638894))))

(assert (=> b!1122106 (= res!749721 (= (select (arr!35226 _keys!1208) i!673) k!934))))

(declare-fun bm!47180 () Bool)

(assert (=> bm!47180 (= call!47183 (getCurrentListMapNoExtraKeys!4375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122107 () Bool)

(declare-fun res!749717 () Bool)

(assert (=> b!1122107 (=> (not res!749717) (not e!638894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122107 (= res!749717 (validMask!0 mask!1564))))

(declare-fun b!1122108 () Bool)

(assert (=> b!1122108 (= e!638897 true)))

(declare-fun lt!498577 () Bool)

(declare-fun contains!6435 (ListLongMap!15797 (_ BitVec 64)) Bool)

(assert (=> b!1122108 (= lt!498577 (contains!6435 (getCurrentListMapNoExtraKeys!4375 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapIsEmpty!44062 () Bool)

(declare-fun mapRes!44062 () Bool)

(assert (=> mapIsEmpty!44062 mapRes!44062))

(declare-fun b!1122109 () Bool)

(declare-fun e!638899 () Bool)

(declare-fun tp_is_empty!28163 () Bool)

(assert (=> b!1122109 (= e!638899 tp_is_empty!28163)))

(declare-fun b!1122110 () Bool)

(assert (=> b!1122110 (= e!638900 (= call!47182 call!47183))))

(declare-fun b!1122111 () Bool)

(declare-fun res!749727 () Bool)

(assert (=> b!1122111 (=> (not res!749727) (not e!638894))))

(assert (=> b!1122111 (= res!749727 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35763 _keys!1208))))))

(declare-fun b!1122112 () Bool)

(declare-fun res!749716 () Bool)

(assert (=> b!1122112 (=> (not res!749716) (not e!638894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73154 (_ BitVec 32)) Bool)

(assert (=> b!1122112 (= res!749716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122113 () Bool)

(declare-fun res!749726 () Bool)

(assert (=> b!1122113 (=> (not res!749726) (not e!638896))))

(assert (=> b!1122113 (= res!749726 (arrayNoDuplicates!0 lt!498575 #b00000000000000000000000000000000 Nil!24652))))

(declare-fun b!1122114 () Bool)

(declare-fun res!749724 () Bool)

(assert (=> b!1122114 (=> (not res!749724) (not e!638894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122114 (= res!749724 (validKeyInArray!0 k!934))))

(declare-fun b!1122115 () Bool)

(declare-fun e!638895 () Bool)

(declare-fun e!638902 () Bool)

(assert (=> b!1122115 (= e!638895 (and e!638902 mapRes!44062))))

(declare-fun condMapEmpty!44062 () Bool)

(declare-fun mapDefault!44062 () ValueCell!13372)


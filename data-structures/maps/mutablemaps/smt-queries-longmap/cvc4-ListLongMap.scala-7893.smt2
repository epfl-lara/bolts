; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98142 () Bool)

(assert start!98142)

(declare-fun b_free!23807 () Bool)

(declare-fun b_next!23807 () Bool)

(assert (=> start!98142 (= b_free!23807 (not b_next!23807))))

(declare-fun tp!84125 () Bool)

(declare-fun b_and!38419 () Bool)

(assert (=> start!98142 (= tp!84125 b_and!38419)))

(declare-fun mapNonEmpty!44323 () Bool)

(declare-fun mapRes!44323 () Bool)

(declare-fun tp!84126 () Bool)

(declare-fun e!641594 () Bool)

(assert (=> mapNonEmpty!44323 (= mapRes!44323 (and tp!84126 e!641594))))

(declare-fun mapKey!44323 () (_ BitVec 32))

(declare-datatypes ((V!42909 0))(
  ( (V!42910 (val!14225 Int)) )
))
(declare-datatypes ((ValueCell!13459 0))(
  ( (ValueCellFull!13459 (v!16859 V!42909)) (EmptyCell!13459) )
))
(declare-fun mapValue!44323 () ValueCell!13459)

(declare-fun mapRest!44323 () (Array (_ BitVec 32) ValueCell!13459))

(declare-datatypes ((array!73494 0))(
  ( (array!73495 (arr!35396 (Array (_ BitVec 32) ValueCell!13459)) (size!35933 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73494)

(assert (=> mapNonEmpty!44323 (= (arr!35396 _values!996) (store mapRest!44323 mapKey!44323 mapValue!44323))))

(declare-fun b!1127169 () Bool)

(declare-fun res!753316 () Bool)

(declare-fun e!641601 () Bool)

(assert (=> b!1127169 (=> (not res!753316) (not e!641601))))

(declare-datatypes ((array!73496 0))(
  ( (array!73497 (arr!35397 (Array (_ BitVec 32) (_ BitVec 64))) (size!35934 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73496)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1127169 (= res!753316 (= (select (arr!35397 _keys!1208) i!673) k!934))))

(declare-fun b!1127170 () Bool)

(declare-fun res!753314 () Bool)

(assert (=> b!1127170 (=> (not res!753314) (not e!641601))))

(declare-datatypes ((List!24803 0))(
  ( (Nil!24800) (Cons!24799 (h!26008 (_ BitVec 64)) (t!35609 List!24803)) )
))
(declare-fun arrayNoDuplicates!0 (array!73496 (_ BitVec 32) List!24803) Bool)

(assert (=> b!1127170 (= res!753314 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24800))))

(declare-fun b!1127171 () Bool)

(declare-fun res!753318 () Bool)

(assert (=> b!1127171 (=> (not res!753318) (not e!641601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127171 (= res!753318 (validKeyInArray!0 k!934))))

(declare-fun b!1127172 () Bool)

(declare-fun res!753313 () Bool)

(assert (=> b!1127172 (=> (not res!753313) (not e!641601))))

(assert (=> b!1127172 (= res!753313 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35934 _keys!1208))))))

(declare-fun mapIsEmpty!44323 () Bool)

(assert (=> mapIsEmpty!44323 mapRes!44323))

(declare-fun b!1127173 () Bool)

(declare-fun e!641600 () Bool)

(assert (=> b!1127173 (= e!641600 true)))

(declare-fun zeroValue!944 () V!42909)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!500478 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42909)

(declare-datatypes ((tuple2!17978 0))(
  ( (tuple2!17979 (_1!8999 (_ BitVec 64)) (_2!8999 V!42909)) )
))
(declare-datatypes ((List!24804 0))(
  ( (Nil!24801) (Cons!24800 (h!26009 tuple2!17978) (t!35610 List!24804)) )
))
(declare-datatypes ((ListLongMap!15959 0))(
  ( (ListLongMap!15960 (toList!7995 List!24804)) )
))
(declare-fun contains!6501 (ListLongMap!15959 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4454 (array!73496 array!73494 (_ BitVec 32) (_ BitVec 32) V!42909 V!42909 (_ BitVec 32) Int) ListLongMap!15959)

(assert (=> b!1127173 (= lt!500478 (contains!6501 (getCurrentListMapNoExtraKeys!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1127174 () Bool)

(declare-fun tp_is_empty!28337 () Bool)

(assert (=> b!1127174 (= e!641594 tp_is_empty!28337)))

(declare-fun b!1127175 () Bool)

(declare-fun e!641599 () Bool)

(declare-fun call!47705 () ListLongMap!15959)

(declare-fun call!47704 () ListLongMap!15959)

(declare-fun -!1133 (ListLongMap!15959 (_ BitVec 64)) ListLongMap!15959)

(assert (=> b!1127175 (= e!641599 (= call!47704 (-!1133 call!47705 k!934)))))

(declare-fun b!1127176 () Bool)

(declare-fun e!641595 () Bool)

(assert (=> b!1127176 (= e!641595 tp_is_empty!28337)))

(declare-fun res!753306 () Bool)

(assert (=> start!98142 (=> (not res!753306) (not e!641601))))

(assert (=> start!98142 (= res!753306 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35934 _keys!1208))))))

(assert (=> start!98142 e!641601))

(assert (=> start!98142 tp_is_empty!28337))

(declare-fun array_inv!27030 (array!73496) Bool)

(assert (=> start!98142 (array_inv!27030 _keys!1208)))

(assert (=> start!98142 true))

(assert (=> start!98142 tp!84125))

(declare-fun e!641603 () Bool)

(declare-fun array_inv!27031 (array!73494) Bool)

(assert (=> start!98142 (and (array_inv!27031 _values!996) e!641603)))

(declare-fun b!1127177 () Bool)

(declare-fun res!753312 () Bool)

(assert (=> b!1127177 (=> (not res!753312) (not e!641601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73496 (_ BitVec 32)) Bool)

(assert (=> b!1127177 (= res!753312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127178 () Bool)

(assert (=> b!1127178 (= e!641599 (= call!47704 call!47705))))

(declare-fun b!1127179 () Bool)

(declare-fun res!753309 () Bool)

(assert (=> b!1127179 (=> (not res!753309) (not e!641601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127179 (= res!753309 (validMask!0 mask!1564))))

(declare-fun lt!500474 () array!73494)

(declare-fun bm!47701 () Bool)

(declare-fun lt!500475 () array!73496)

(assert (=> bm!47701 (= call!47704 (getCurrentListMapNoExtraKeys!4454 lt!500475 lt!500474 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127180 () Bool)

(declare-fun res!753311 () Bool)

(assert (=> b!1127180 (=> (not res!753311) (not e!641601))))

(assert (=> b!1127180 (= res!753311 (and (= (size!35933 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35934 _keys!1208) (size!35933 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127181 () Bool)

(declare-fun res!753308 () Bool)

(declare-fun e!641602 () Bool)

(assert (=> b!1127181 (=> (not res!753308) (not e!641602))))

(assert (=> b!1127181 (= res!753308 (arrayNoDuplicates!0 lt!500475 #b00000000000000000000000000000000 Nil!24800))))

(declare-fun b!1127182 () Bool)

(declare-fun e!641598 () Bool)

(assert (=> b!1127182 (= e!641598 e!641600)))

(declare-fun res!753307 () Bool)

(assert (=> b!1127182 (=> res!753307 e!641600)))

(assert (=> b!1127182 (= res!753307 (not (= (select (arr!35397 _keys!1208) from!1455) k!934)))))

(assert (=> b!1127182 e!641599))

(declare-fun c!109661 () Bool)

(assert (=> b!1127182 (= c!109661 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36883 0))(
  ( (Unit!36884) )
))
(declare-fun lt!500476 () Unit!36883)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!390 (array!73496 array!73494 (_ BitVec 32) (_ BitVec 32) V!42909 V!42909 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36883)

(assert (=> b!1127182 (= lt!500476 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47702 () Bool)

(assert (=> bm!47702 (= call!47705 (getCurrentListMapNoExtraKeys!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127183 () Bool)

(assert (=> b!1127183 (= e!641603 (and e!641595 mapRes!44323))))

(declare-fun condMapEmpty!44323 () Bool)

(declare-fun mapDefault!44323 () ValueCell!13459)


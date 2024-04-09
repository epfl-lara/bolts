; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97974 () Bool)

(assert start!97974)

(declare-fun b_free!23639 () Bool)

(declare-fun b_next!23639 () Bool)

(assert (=> start!97974 (= b_free!23639 (not b_next!23639))))

(declare-fun tp!83621 () Bool)

(declare-fun b_and!38083 () Bool)

(assert (=> start!97974 (= tp!83621 b_and!38083)))

(declare-fun b!1122267 () Bool)

(declare-fun e!638990 () Bool)

(declare-fun e!638987 () Bool)

(assert (=> b!1122267 (= e!638990 e!638987)))

(declare-fun res!749838 () Bool)

(assert (=> b!1122267 (=> res!749838 e!638987)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122267 (= res!749838 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42685 0))(
  ( (V!42686 (val!14141 Int)) )
))
(declare-fun zeroValue!944 () V!42685)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13375 0))(
  ( (ValueCellFull!13375 (v!16775 V!42685)) (EmptyCell!13375) )
))
(declare-datatypes ((array!73164 0))(
  ( (array!73165 (arr!35231 (Array (_ BitVec 32) ValueCell!13375)) (size!35768 (_ BitVec 32))) )
))
(declare-fun lt!498638 () array!73164)

(declare-datatypes ((array!73166 0))(
  ( (array!73167 (arr!35232 (Array (_ BitVec 32) (_ BitVec 64))) (size!35769 (_ BitVec 32))) )
))
(declare-fun lt!498639 () array!73166)

(declare-datatypes ((tuple2!17822 0))(
  ( (tuple2!17823 (_1!8921 (_ BitVec 64)) (_2!8921 V!42685)) )
))
(declare-datatypes ((List!24659 0))(
  ( (Nil!24656) (Cons!24655 (h!25864 tuple2!17822) (t!35297 List!24659)) )
))
(declare-datatypes ((ListLongMap!15803 0))(
  ( (ListLongMap!15804 (toList!7917 List!24659)) )
))
(declare-fun lt!498637 () ListLongMap!15803)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42685)

(declare-fun getCurrentListMapNoExtraKeys!4378 (array!73166 array!73164 (_ BitVec 32) (_ BitVec 32) V!42685 V!42685 (_ BitVec 32) Int) ListLongMap!15803)

(assert (=> b!1122267 (= lt!498637 (getCurrentListMapNoExtraKeys!4378 lt!498639 lt!498638 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73164)

(declare-fun dynLambda!2475 (Int (_ BitVec 64)) V!42685)

(assert (=> b!1122267 (= lt!498638 (array!73165 (store (arr!35231 _values!996) i!673 (ValueCellFull!13375 (dynLambda!2475 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35768 _values!996)))))

(declare-fun _keys!1208 () array!73166)

(declare-fun lt!498642 () ListLongMap!15803)

(assert (=> b!1122267 (= lt!498642 (getCurrentListMapNoExtraKeys!4378 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122268 () Bool)

(declare-fun e!638986 () Bool)

(declare-fun tp_is_empty!28169 () Bool)

(assert (=> b!1122268 (= e!638986 tp_is_empty!28169)))

(declare-fun b!1122269 () Bool)

(declare-fun e!638984 () Bool)

(assert (=> b!1122269 (= e!638984 true)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!498636 () Bool)

(declare-fun contains!6438 (ListLongMap!15803 (_ BitVec 64)) Bool)

(assert (=> b!1122269 (= lt!498636 (contains!6438 (getCurrentListMapNoExtraKeys!4378 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun e!638993 () Bool)

(declare-fun call!47200 () ListLongMap!15803)

(declare-fun call!47201 () ListLongMap!15803)

(declare-fun b!1122270 () Bool)

(declare-fun -!1080 (ListLongMap!15803 (_ BitVec 64)) ListLongMap!15803)

(assert (=> b!1122270 (= e!638993 (= call!47201 (-!1080 call!47200 k!934)))))

(declare-fun b!1122271 () Bool)

(declare-fun res!749836 () Bool)

(declare-fun e!638985 () Bool)

(assert (=> b!1122271 (=> (not res!749836) (not e!638985))))

(declare-datatypes ((List!24660 0))(
  ( (Nil!24657) (Cons!24656 (h!25865 (_ BitVec 64)) (t!35298 List!24660)) )
))
(declare-fun arrayNoDuplicates!0 (array!73166 (_ BitVec 32) List!24660) Bool)

(assert (=> b!1122271 (= res!749836 (arrayNoDuplicates!0 lt!498639 #b00000000000000000000000000000000 Nil!24657))))

(declare-fun b!1122272 () Bool)

(declare-fun res!749841 () Bool)

(declare-fun e!638988 () Bool)

(assert (=> b!1122272 (=> (not res!749841) (not e!638988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122272 (= res!749841 (validMask!0 mask!1564))))

(declare-fun b!1122273 () Bool)

(assert (=> b!1122273 (= e!638985 (not e!638990))))

(declare-fun res!749834 () Bool)

(assert (=> b!1122273 (=> res!749834 e!638990)))

(assert (=> b!1122273 (= res!749834 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122273 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36743 0))(
  ( (Unit!36744) )
))
(declare-fun lt!498640 () Unit!36743)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73166 (_ BitVec 64) (_ BitVec 32)) Unit!36743)

(assert (=> b!1122273 (= lt!498640 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1122274 () Bool)

(declare-fun e!638991 () Bool)

(declare-fun e!638992 () Bool)

(declare-fun mapRes!44071 () Bool)

(assert (=> b!1122274 (= e!638991 (and e!638992 mapRes!44071))))

(declare-fun condMapEmpty!44071 () Bool)

(declare-fun mapDefault!44071 () ValueCell!13375)


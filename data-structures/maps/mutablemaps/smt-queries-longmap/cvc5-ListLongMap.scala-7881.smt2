; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98066 () Bool)

(assert start!98066)

(declare-fun b_free!23731 () Bool)

(declare-fun b_next!23731 () Bool)

(assert (=> start!98066 (= b_free!23731 (not b_next!23731))))

(declare-fun tp!83897 () Bool)

(declare-fun b_and!38267 () Bool)

(assert (=> start!98066 (= tp!83897 b_and!38267)))

(declare-fun res!751770 () Bool)

(declare-fun e!640438 () Bool)

(assert (=> start!98066 (=> (not res!751770) (not e!640438))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73346 0))(
  ( (array!73347 (arr!35322 (Array (_ BitVec 32) (_ BitVec 64))) (size!35859 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73346)

(assert (=> start!98066 (= res!751770 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35859 _keys!1208))))))

(assert (=> start!98066 e!640438))

(declare-fun tp_is_empty!28261 () Bool)

(assert (=> start!98066 tp_is_empty!28261))

(declare-fun array_inv!26986 (array!73346) Bool)

(assert (=> start!98066 (array_inv!26986 _keys!1208)))

(assert (=> start!98066 true))

(assert (=> start!98066 tp!83897))

(declare-datatypes ((V!42809 0))(
  ( (V!42810 (val!14187 Int)) )
))
(declare-datatypes ((ValueCell!13421 0))(
  ( (ValueCellFull!13421 (v!16821 V!42809)) (EmptyCell!13421) )
))
(declare-datatypes ((array!73348 0))(
  ( (array!73349 (arr!35323 (Array (_ BitVec 32) ValueCell!13421)) (size!35860 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73348)

(declare-fun e!640432 () Bool)

(declare-fun array_inv!26987 (array!73348) Bool)

(assert (=> start!98066 (and (array_inv!26987 _values!996) e!640432)))

(declare-fun b!1124982 () Bool)

(declare-fun res!751776 () Bool)

(assert (=> b!1124982 (=> (not res!751776) (not e!640438))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1124982 (= res!751776 (and (= (size!35860 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35859 _keys!1208) (size!35860 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124983 () Bool)

(declare-fun res!751767 () Bool)

(declare-fun e!640436 () Bool)

(assert (=> b!1124983 (=> res!751767 e!640436)))

(assert (=> b!1124983 (= res!751767 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!44209 () Bool)

(declare-fun mapRes!44209 () Bool)

(assert (=> mapIsEmpty!44209 mapRes!44209))

(declare-fun b!1124984 () Bool)

(declare-fun e!640439 () Bool)

(declare-datatypes ((tuple2!17908 0))(
  ( (tuple2!17909 (_1!8964 (_ BitVec 64)) (_2!8964 V!42809)) )
))
(declare-datatypes ((List!24738 0))(
  ( (Nil!24735) (Cons!24734 (h!25943 tuple2!17908) (t!35468 List!24738)) )
))
(declare-datatypes ((ListLongMap!15889 0))(
  ( (ListLongMap!15890 (toList!7960 List!24738)) )
))
(declare-fun call!47476 () ListLongMap!15889)

(declare-fun call!47477 () ListLongMap!15889)

(assert (=> b!1124984 (= e!640439 (= call!47476 call!47477))))

(declare-fun b!1124985 () Bool)

(declare-fun e!640430 () Bool)

(declare-fun e!640433 () Bool)

(assert (=> b!1124985 (= e!640430 (not e!640433))))

(declare-fun res!751768 () Bool)

(assert (=> b!1124985 (=> res!751768 e!640433)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124985 (= res!751768 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124985 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36817 0))(
  ( (Unit!36818) )
))
(declare-fun lt!499665 () Unit!36817)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73346 (_ BitVec 64) (_ BitVec 32)) Unit!36817)

(assert (=> b!1124985 (= lt!499665 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun zeroValue!944 () V!42809)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42809)

(declare-fun bm!47473 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4419 (array!73346 array!73348 (_ BitVec 32) (_ BitVec 32) V!42809 V!42809 (_ BitVec 32) Int) ListLongMap!15889)

(assert (=> bm!47473 (= call!47477 (getCurrentListMapNoExtraKeys!4419 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124986 () Bool)

(declare-fun res!751773 () Bool)

(assert (=> b!1124986 (=> (not res!751773) (not e!640438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124986 (= res!751773 (validMask!0 mask!1564))))

(declare-fun b!1124987 () Bool)

(declare-fun e!640435 () Bool)

(assert (=> b!1124987 (= e!640435 e!640436)))

(declare-fun res!751769 () Bool)

(assert (=> b!1124987 (=> res!751769 e!640436)))

(declare-fun lt!499664 () ListLongMap!15889)

(declare-fun contains!6471 (ListLongMap!15889 (_ BitVec 64)) Bool)

(assert (=> b!1124987 (= res!751769 (not (contains!6471 lt!499664 k!934)))))

(assert (=> b!1124987 (= lt!499664 (getCurrentListMapNoExtraKeys!4419 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124988 () Bool)

(declare-fun res!751772 () Bool)

(assert (=> b!1124988 (=> (not res!751772) (not e!640438))))

(assert (=> b!1124988 (= res!751772 (= (select (arr!35322 _keys!1208) i!673) k!934))))

(declare-fun b!1124989 () Bool)

(declare-fun e!640437 () Bool)

(assert (=> b!1124989 (= e!640437 tp_is_empty!28261)))

(declare-fun lt!499658 () array!73346)

(declare-fun bm!47474 () Bool)

(declare-fun lt!499662 () array!73348)

(assert (=> bm!47474 (= call!47476 (getCurrentListMapNoExtraKeys!4419 lt!499658 lt!499662 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124990 () Bool)

(declare-fun res!751765 () Bool)

(assert (=> b!1124990 (=> (not res!751765) (not e!640438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73346 (_ BitVec 32)) Bool)

(assert (=> b!1124990 (= res!751765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124991 () Bool)

(declare-fun e!640431 () Bool)

(assert (=> b!1124991 (= e!640433 e!640431)))

(declare-fun res!751771 () Bool)

(assert (=> b!1124991 (=> res!751771 e!640431)))

(assert (=> b!1124991 (= res!751771 (not (= from!1455 i!673)))))

(declare-fun lt!499660 () ListLongMap!15889)

(assert (=> b!1124991 (= lt!499660 (getCurrentListMapNoExtraKeys!4419 lt!499658 lt!499662 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2504 (Int (_ BitVec 64)) V!42809)

(assert (=> b!1124991 (= lt!499662 (array!73349 (store (arr!35323 _values!996) i!673 (ValueCellFull!13421 (dynLambda!2504 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35860 _values!996)))))

(declare-fun lt!499661 () ListLongMap!15889)

(assert (=> b!1124991 (= lt!499661 (getCurrentListMapNoExtraKeys!4419 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124992 () Bool)

(declare-fun res!751766 () Bool)

(assert (=> b!1124992 (=> (not res!751766) (not e!640430))))

(declare-datatypes ((List!24739 0))(
  ( (Nil!24736) (Cons!24735 (h!25944 (_ BitVec 64)) (t!35469 List!24739)) )
))
(declare-fun arrayNoDuplicates!0 (array!73346 (_ BitVec 32) List!24739) Bool)

(assert (=> b!1124992 (= res!751766 (arrayNoDuplicates!0 lt!499658 #b00000000000000000000000000000000 Nil!24736))))

(declare-fun b!1124993 () Bool)

(declare-fun -!1108 (ListLongMap!15889 (_ BitVec 64)) ListLongMap!15889)

(assert (=> b!1124993 (= e!640439 (= call!47476 (-!1108 call!47477 k!934)))))

(declare-fun b!1124994 () Bool)

(declare-fun res!751777 () Bool)

(assert (=> b!1124994 (=> (not res!751777) (not e!640438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124994 (= res!751777 (validKeyInArray!0 k!934))))

(declare-fun b!1124995 () Bool)

(assert (=> b!1124995 (= e!640438 e!640430)))

(declare-fun res!751775 () Bool)

(assert (=> b!1124995 (=> (not res!751775) (not e!640430))))

(assert (=> b!1124995 (= res!751775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499658 mask!1564))))

(assert (=> b!1124995 (= lt!499658 (array!73347 (store (arr!35322 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35859 _keys!1208)))))

(declare-fun b!1124996 () Bool)

(declare-fun res!751774 () Bool)

(assert (=> b!1124996 (=> (not res!751774) (not e!640438))))

(assert (=> b!1124996 (= res!751774 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35859 _keys!1208))))))

(declare-fun b!1124997 () Bool)

(declare-fun e!640434 () Bool)

(assert (=> b!1124997 (= e!640434 tp_is_empty!28261)))

(declare-fun mapNonEmpty!44209 () Bool)

(declare-fun tp!83898 () Bool)

(assert (=> mapNonEmpty!44209 (= mapRes!44209 (and tp!83898 e!640434))))

(declare-fun mapKey!44209 () (_ BitVec 32))

(declare-fun mapRest!44209 () (Array (_ BitVec 32) ValueCell!13421))

(declare-fun mapValue!44209 () ValueCell!13421)

(assert (=> mapNonEmpty!44209 (= (arr!35323 _values!996) (store mapRest!44209 mapKey!44209 mapValue!44209))))

(declare-fun b!1124998 () Bool)

(assert (=> b!1124998 (= e!640436 true)))

(declare-fun +!3384 (ListLongMap!15889 tuple2!17908) ListLongMap!15889)

(assert (=> b!1124998 (contains!6471 (+!3384 lt!499664 (tuple2!17909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-fun lt!499659 () Unit!36817)

(declare-fun addStillContains!683 (ListLongMap!15889 (_ BitVec 64) V!42809 (_ BitVec 64)) Unit!36817)

(assert (=> b!1124998 (= lt!499659 (addStillContains!683 lt!499664 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun b!1124999 () Bool)

(assert (=> b!1124999 (= e!640432 (and e!640437 mapRes!44209))))

(declare-fun condMapEmpty!44209 () Bool)

(declare-fun mapDefault!44209 () ValueCell!13421)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99740 () Bool)

(assert start!99740)

(declare-fun b_free!25283 () Bool)

(declare-fun b_next!25283 () Bool)

(assert (=> start!99740 (= b_free!25283 (not b_next!25283))))

(declare-fun tp!88563 () Bool)

(declare-fun b_and!41447 () Bool)

(assert (=> start!99740 (= tp!88563 b_and!41447)))

(declare-fun b!1182995 () Bool)

(declare-fun e!672629 () Bool)

(declare-fun e!672626 () Bool)

(assert (=> b!1182995 (= e!672629 e!672626)))

(declare-fun res!786327 () Bool)

(assert (=> b!1182995 (=> res!786327 e!672626)))

(declare-datatypes ((array!76394 0))(
  ( (array!76395 (arr!36843 (Array (_ BitVec 32) (_ BitVec 64))) (size!37380 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76394)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1182995 (= res!786327 (not (= (select (arr!36843 _keys!1208) from!1455) k!934)))))

(declare-fun b!1182996 () Bool)

(declare-fun res!786316 () Bool)

(declare-fun e!672633 () Bool)

(assert (=> b!1182996 (=> (not res!786316) (not e!672633))))

(declare-datatypes ((List!26061 0))(
  ( (Nil!26058) (Cons!26057 (h!27266 (_ BitVec 64)) (t!38343 List!26061)) )
))
(declare-fun arrayNoDuplicates!0 (array!76394 (_ BitVec 32) List!26061) Bool)

(assert (=> b!1182996 (= res!786316 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26058))))

(declare-fun mapIsEmpty!46547 () Bool)

(declare-fun mapRes!46547 () Bool)

(assert (=> mapIsEmpty!46547 mapRes!46547))

(declare-fun b!1182997 () Bool)

(declare-fun res!786314 () Bool)

(assert (=> b!1182997 (=> (not res!786314) (not e!672633))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182997 (= res!786314 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37380 _keys!1208))))))

(declare-fun b!1182998 () Bool)

(declare-fun e!672631 () Bool)

(declare-fun e!672628 () Bool)

(assert (=> b!1182998 (= e!672631 e!672628)))

(declare-fun res!786326 () Bool)

(assert (=> b!1182998 (=> res!786326 e!672628)))

(assert (=> b!1182998 (= res!786326 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44877 0))(
  ( (V!44878 (val!14963 Int)) )
))
(declare-datatypes ((ValueCell!14197 0))(
  ( (ValueCellFull!14197 (v!17602 V!44877)) (EmptyCell!14197) )
))
(declare-datatypes ((array!76396 0))(
  ( (array!76397 (arr!36844 (Array (_ BitVec 32) ValueCell!14197)) (size!37381 (_ BitVec 32))) )
))
(declare-fun lt!535782 () array!76396)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19298 0))(
  ( (tuple2!19299 (_1!9659 (_ BitVec 64)) (_2!9659 V!44877)) )
))
(declare-datatypes ((List!26062 0))(
  ( (Nil!26059) (Cons!26058 (h!27267 tuple2!19298) (t!38344 List!26062)) )
))
(declare-datatypes ((ListLongMap!17279 0))(
  ( (ListLongMap!17280 (toList!8655 List!26062)) )
))
(declare-fun lt!535774 () ListLongMap!17279)

(declare-fun lt!535765 () array!76394)

(declare-fun minValue!944 () V!44877)

(declare-fun zeroValue!944 () V!44877)

(declare-fun getCurrentListMapNoExtraKeys!5077 (array!76394 array!76396 (_ BitVec 32) (_ BitVec 32) V!44877 V!44877 (_ BitVec 32) Int) ListLongMap!17279)

(assert (=> b!1182998 (= lt!535774 (getCurrentListMapNoExtraKeys!5077 lt!535765 lt!535782 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535780 () V!44877)

(declare-fun _values!996 () array!76396)

(assert (=> b!1182998 (= lt!535782 (array!76397 (store (arr!36844 _values!996) i!673 (ValueCellFull!14197 lt!535780)) (size!37381 _values!996)))))

(declare-fun dynLambda!3044 (Int (_ BitVec 64)) V!44877)

(assert (=> b!1182998 (= lt!535780 (dynLambda!3044 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535768 () ListLongMap!17279)

(assert (=> b!1182998 (= lt!535768 (getCurrentListMapNoExtraKeys!5077 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182999 () Bool)

(declare-fun res!786321 () Bool)

(assert (=> b!1182999 (=> (not res!786321) (not e!672633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182999 (= res!786321 (validMask!0 mask!1564))))

(declare-fun b!1183000 () Bool)

(declare-fun res!786315 () Bool)

(declare-fun e!672636 () Bool)

(assert (=> b!1183000 (=> (not res!786315) (not e!672636))))

(assert (=> b!1183000 (= res!786315 (arrayNoDuplicates!0 lt!535765 #b00000000000000000000000000000000 Nil!26058))))

(declare-fun b!1183001 () Bool)

(declare-fun res!786325 () Bool)

(assert (=> b!1183001 (=> (not res!786325) (not e!672633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76394 (_ BitVec 32)) Bool)

(assert (=> b!1183001 (= res!786325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183002 () Bool)

(declare-fun e!672632 () Bool)

(assert (=> b!1183002 (= e!672628 e!672632)))

(declare-fun res!786322 () Bool)

(assert (=> b!1183002 (=> res!786322 e!672632)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183002 (= res!786322 (not (validKeyInArray!0 (select (arr!36843 _keys!1208) from!1455))))))

(declare-fun lt!535776 () ListLongMap!17279)

(declare-fun lt!535778 () ListLongMap!17279)

(assert (=> b!1183002 (= lt!535776 lt!535778)))

(declare-fun lt!535766 () ListLongMap!17279)

(declare-fun -!1643 (ListLongMap!17279 (_ BitVec 64)) ListLongMap!17279)

(assert (=> b!1183002 (= lt!535778 (-!1643 lt!535766 k!934))))

(assert (=> b!1183002 (= lt!535776 (getCurrentListMapNoExtraKeys!5077 lt!535765 lt!535782 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183002 (= lt!535766 (getCurrentListMapNoExtraKeys!5077 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39075 0))(
  ( (Unit!39076) )
))
(declare-fun lt!535767 () Unit!39075)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!863 (array!76394 array!76396 (_ BitVec 32) (_ BitVec 32) V!44877 V!44877 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39075)

(assert (=> b!1183002 (= lt!535767 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!863 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183003 () Bool)

(assert (=> b!1183003 (= e!672632 true)))

(declare-fun lt!535773 () ListLongMap!17279)

(declare-fun lt!535779 () ListLongMap!17279)

(assert (=> b!1183003 (= (-!1643 lt!535773 k!934) lt!535779)))

(declare-fun lt!535781 () Unit!39075)

(declare-fun lt!535771 () V!44877)

(declare-fun addRemoveCommutativeForDiffKeys!161 (ListLongMap!17279 (_ BitVec 64) V!44877 (_ BitVec 64)) Unit!39075)

(assert (=> b!1183003 (= lt!535781 (addRemoveCommutativeForDiffKeys!161 lt!535766 (select (arr!36843 _keys!1208) from!1455) lt!535771 k!934))))

(assert (=> b!1183003 (and (= lt!535768 lt!535773) (= lt!535778 lt!535776))))

(declare-fun lt!535772 () tuple2!19298)

(declare-fun +!3871 (ListLongMap!17279 tuple2!19298) ListLongMap!17279)

(assert (=> b!1183003 (= lt!535773 (+!3871 lt!535766 lt!535772))))

(assert (=> b!1183003 (not (= (select (arr!36843 _keys!1208) from!1455) k!934))))

(declare-fun lt!535775 () Unit!39075)

(declare-fun e!672637 () Unit!39075)

(assert (=> b!1183003 (= lt!535775 e!672637)))

(declare-fun c!116996 () Bool)

(assert (=> b!1183003 (= c!116996 (= (select (arr!36843 _keys!1208) from!1455) k!934))))

(assert (=> b!1183003 e!672629))

(declare-fun res!786317 () Bool)

(assert (=> b!1183003 (=> (not res!786317) (not e!672629))))

(assert (=> b!1183003 (= res!786317 (= lt!535774 lt!535779))))

(assert (=> b!1183003 (= lt!535779 (+!3871 lt!535778 lt!535772))))

(assert (=> b!1183003 (= lt!535772 (tuple2!19299 (select (arr!36843 _keys!1208) from!1455) lt!535771))))

(declare-fun get!18887 (ValueCell!14197 V!44877) V!44877)

(assert (=> b!1183003 (= lt!535771 (get!18887 (select (arr!36844 _values!996) from!1455) lt!535780))))

(declare-fun b!1183004 () Bool)

(assert (=> b!1183004 (= e!672636 (not e!672631))))

(declare-fun res!786319 () Bool)

(assert (=> b!1183004 (=> res!786319 e!672631)))

(assert (=> b!1183004 (= res!786319 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183004 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!535770 () Unit!39075)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76394 (_ BitVec 64) (_ BitVec 32)) Unit!39075)

(assert (=> b!1183004 (= lt!535770 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183005 () Bool)

(assert (=> b!1183005 (= e!672633 e!672636)))

(declare-fun res!786320 () Bool)

(assert (=> b!1183005 (=> (not res!786320) (not e!672636))))

(assert (=> b!1183005 (= res!786320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535765 mask!1564))))

(assert (=> b!1183005 (= lt!535765 (array!76395 (store (arr!36843 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37380 _keys!1208)))))

(declare-fun b!1183006 () Bool)

(declare-fun e!672630 () Bool)

(declare-fun tp_is_empty!29813 () Bool)

(assert (=> b!1183006 (= e!672630 tp_is_empty!29813)))

(declare-fun res!786328 () Bool)

(assert (=> start!99740 (=> (not res!786328) (not e!672633))))

(assert (=> start!99740 (= res!786328 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37380 _keys!1208))))))

(assert (=> start!99740 e!672633))

(assert (=> start!99740 tp_is_empty!29813))

(declare-fun array_inv!28004 (array!76394) Bool)

(assert (=> start!99740 (array_inv!28004 _keys!1208)))

(assert (=> start!99740 true))

(assert (=> start!99740 tp!88563))

(declare-fun e!672627 () Bool)

(declare-fun array_inv!28005 (array!76396) Bool)

(assert (=> start!99740 (and (array_inv!28005 _values!996) e!672627)))

(declare-fun mapNonEmpty!46547 () Bool)

(declare-fun tp!88564 () Bool)

(assert (=> mapNonEmpty!46547 (= mapRes!46547 (and tp!88564 e!672630))))

(declare-fun mapKey!46547 () (_ BitVec 32))

(declare-fun mapValue!46547 () ValueCell!14197)

(declare-fun mapRest!46547 () (Array (_ BitVec 32) ValueCell!14197))

(assert (=> mapNonEmpty!46547 (= (arr!36844 _values!996) (store mapRest!46547 mapKey!46547 mapValue!46547))))

(declare-fun b!1183007 () Bool)

(declare-fun res!786318 () Bool)

(assert (=> b!1183007 (=> (not res!786318) (not e!672633))))

(assert (=> b!1183007 (= res!786318 (= (select (arr!36843 _keys!1208) i!673) k!934))))

(declare-fun b!1183008 () Bool)

(assert (=> b!1183008 (= e!672626 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183009 () Bool)

(declare-fun e!672635 () Bool)

(assert (=> b!1183009 (= e!672627 (and e!672635 mapRes!46547))))

(declare-fun condMapEmpty!46547 () Bool)

(declare-fun mapDefault!46547 () ValueCell!14197)


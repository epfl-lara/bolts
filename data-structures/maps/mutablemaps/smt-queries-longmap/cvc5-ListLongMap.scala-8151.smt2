; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99808 () Bool)

(assert start!99808)

(declare-fun b_free!25351 () Bool)

(declare-fun b_next!25351 () Bool)

(assert (=> start!99808 (= b_free!25351 (not b_next!25351))))

(declare-fun tp!88767 () Bool)

(declare-fun b_and!41583 () Bool)

(assert (=> start!99808 (= tp!88767 b_and!41583)))

(declare-fun b!1185103 () Bool)

(declare-fun e!673854 () Bool)

(declare-fun tp_is_empty!29881 () Bool)

(assert (=> b!1185103 (= e!673854 tp_is_empty!29881)))

(declare-fun b!1185104 () Bool)

(declare-fun res!787857 () Bool)

(declare-fun e!673861 () Bool)

(assert (=> b!1185104 (=> (not res!787857) (not e!673861))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76530 0))(
  ( (array!76531 (arr!36911 (Array (_ BitVec 32) (_ BitVec 64))) (size!37448 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76530)

(assert (=> b!1185104 (= res!787857 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37448 _keys!1208))))))

(declare-fun b!1185105 () Bool)

(declare-fun res!787858 () Bool)

(assert (=> b!1185105 (=> (not res!787858) (not e!673861))))

(declare-datatypes ((List!26119 0))(
  ( (Nil!26116) (Cons!26115 (h!27324 (_ BitVec 64)) (t!38469 List!26119)) )
))
(declare-fun arrayNoDuplicates!0 (array!76530 (_ BitVec 32) List!26119) Bool)

(assert (=> b!1185105 (= res!787858 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26116))))

(declare-fun b!1185106 () Bool)

(declare-fun e!673855 () Bool)

(declare-fun e!673853 () Bool)

(assert (=> b!1185106 (= e!673855 e!673853)))

(declare-fun res!787852 () Bool)

(assert (=> b!1185106 (=> res!787852 e!673853)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1185106 (= res!787852 (not (= (select (arr!36911 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185107 () Bool)

(declare-fun res!787844 () Bool)

(assert (=> b!1185107 (=> (not res!787844) (not e!673861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185107 (= res!787844 (validKeyInArray!0 k!934))))

(declare-fun b!1185108 () Bool)

(declare-fun res!787853 () Bool)

(assert (=> b!1185108 (=> (not res!787853) (not e!673861))))

(assert (=> b!1185108 (= res!787853 (= (select (arr!36911 _keys!1208) i!673) k!934))))

(declare-fun b!1185109 () Bool)

(declare-fun e!673860 () Bool)

(declare-fun e!673858 () Bool)

(assert (=> b!1185109 (= e!673860 e!673858)))

(declare-fun res!787850 () Bool)

(assert (=> b!1185109 (=> res!787850 e!673858)))

(assert (=> b!1185109 (= res!787850 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44969 0))(
  ( (V!44970 (val!14997 Int)) )
))
(declare-fun zeroValue!944 () V!44969)

(declare-datatypes ((ValueCell!14231 0))(
  ( (ValueCellFull!14231 (v!17636 V!44969)) (EmptyCell!14231) )
))
(declare-datatypes ((array!76532 0))(
  ( (array!76533 (arr!36912 (Array (_ BitVec 32) ValueCell!14231)) (size!37449 (_ BitVec 32))) )
))
(declare-fun lt!537716 () array!76532)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!537702 () array!76530)

(declare-datatypes ((tuple2!19358 0))(
  ( (tuple2!19359 (_1!9689 (_ BitVec 64)) (_2!9689 V!44969)) )
))
(declare-datatypes ((List!26120 0))(
  ( (Nil!26117) (Cons!26116 (h!27325 tuple2!19358) (t!38470 List!26120)) )
))
(declare-datatypes ((ListLongMap!17339 0))(
  ( (ListLongMap!17340 (toList!8685 List!26120)) )
))
(declare-fun lt!537706 () ListLongMap!17339)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44969)

(declare-fun getCurrentListMapNoExtraKeys!5104 (array!76530 array!76532 (_ BitVec 32) (_ BitVec 32) V!44969 V!44969 (_ BitVec 32) Int) ListLongMap!17339)

(assert (=> b!1185109 (= lt!537706 (getCurrentListMapNoExtraKeys!5104 lt!537702 lt!537716 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!537717 () V!44969)

(declare-fun _values!996 () array!76532)

(assert (=> b!1185109 (= lt!537716 (array!76533 (store (arr!36912 _values!996) i!673 (ValueCellFull!14231 lt!537717)) (size!37449 _values!996)))))

(declare-fun dynLambda!3065 (Int (_ BitVec 64)) V!44969)

(assert (=> b!1185109 (= lt!537717 (dynLambda!3065 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!537714 () ListLongMap!17339)

(assert (=> b!1185109 (= lt!537714 (getCurrentListMapNoExtraKeys!5104 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!787846 () Bool)

(assert (=> start!99808 (=> (not res!787846) (not e!673861))))

(assert (=> start!99808 (= res!787846 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37448 _keys!1208))))))

(assert (=> start!99808 e!673861))

(assert (=> start!99808 tp_is_empty!29881))

(declare-fun array_inv!28050 (array!76530) Bool)

(assert (=> start!99808 (array_inv!28050 _keys!1208)))

(assert (=> start!99808 true))

(assert (=> start!99808 tp!88767))

(declare-fun e!673857 () Bool)

(declare-fun array_inv!28051 (array!76532) Bool)

(assert (=> start!99808 (and (array_inv!28051 _values!996) e!673857)))

(declare-fun b!1185110 () Bool)

(declare-fun res!787856 () Bool)

(assert (=> b!1185110 (=> (not res!787856) (not e!673861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185110 (= res!787856 (validMask!0 mask!1564))))

(declare-fun b!1185111 () Bool)

(declare-fun res!787847 () Bool)

(assert (=> b!1185111 (=> (not res!787847) (not e!673861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76530 (_ BitVec 32)) Bool)

(assert (=> b!1185111 (= res!787847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185112 () Bool)

(declare-fun e!673852 () Bool)

(assert (=> b!1185112 (= e!673861 e!673852)))

(declare-fun res!787855 () Bool)

(assert (=> b!1185112 (=> (not res!787855) (not e!673852))))

(assert (=> b!1185112 (= res!787855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537702 mask!1564))))

(assert (=> b!1185112 (= lt!537702 (array!76531 (store (arr!36911 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37448 _keys!1208)))))

(declare-fun b!1185113 () Bool)

(declare-fun res!787849 () Bool)

(assert (=> b!1185113 (=> (not res!787849) (not e!673852))))

(assert (=> b!1185113 (= res!787849 (arrayNoDuplicates!0 lt!537702 #b00000000000000000000000000000000 Nil!26116))))

(declare-fun b!1185114 () Bool)

(declare-fun e!673851 () Bool)

(declare-fun mapRes!46649 () Bool)

(assert (=> b!1185114 (= e!673857 (and e!673851 mapRes!46649))))

(declare-fun condMapEmpty!46649 () Bool)

(declare-fun mapDefault!46649 () ValueCell!14231)


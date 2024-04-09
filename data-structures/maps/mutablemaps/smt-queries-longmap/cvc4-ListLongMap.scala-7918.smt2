; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98388 () Bool)

(assert start!98388)

(declare-fun b_free!23957 () Bool)

(declare-fun b_next!23957 () Bool)

(assert (=> start!98388 (= b_free!23957 (not b_next!23957))))

(declare-fun tp!84583 () Bool)

(declare-fun b_and!38777 () Bool)

(assert (=> start!98388 (= tp!84583 b_and!38777)))

(declare-fun b!1133197 () Bool)

(declare-fun e!644971 () Bool)

(declare-fun tp_is_empty!28487 () Bool)

(assert (=> b!1133197 (= e!644971 tp_is_empty!28487)))

(declare-fun b!1133198 () Bool)

(declare-fun e!644985 () Bool)

(assert (=> b!1133198 (= e!644985 tp_is_empty!28487)))

(declare-datatypes ((array!73796 0))(
  ( (array!73797 (arr!35545 (Array (_ BitVec 32) (_ BitVec 64))) (size!36082 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73796)

(declare-fun b!1133199 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!644973 () Bool)

(declare-fun arrayContainsKey!0 (array!73796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133199 (= e!644973 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133200 () Bool)

(declare-fun res!756759 () Bool)

(declare-fun e!644980 () Bool)

(assert (=> b!1133200 (=> (not res!756759) (not e!644980))))

(declare-fun lt!503547 () array!73796)

(declare-datatypes ((List!24935 0))(
  ( (Nil!24932) (Cons!24931 (h!26140 (_ BitVec 64)) (t!35891 List!24935)) )
))
(declare-fun arrayNoDuplicates!0 (array!73796 (_ BitVec 32) List!24935) Bool)

(assert (=> b!1133200 (= res!756759 (arrayNoDuplicates!0 lt!503547 #b00000000000000000000000000000000 Nil!24932))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!503543 () Bool)

(declare-fun e!644976 () Bool)

(declare-fun b!1133201 () Bool)

(assert (=> b!1133201 (= e!644976 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503543) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1133202 () Bool)

(declare-fun e!644972 () Bool)

(assert (=> b!1133202 (= e!644972 e!644980)))

(declare-fun res!756764 () Bool)

(assert (=> b!1133202 (=> (not res!756764) (not e!644980))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73796 (_ BitVec 32)) Bool)

(assert (=> b!1133202 (= res!756764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503547 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133202 (= lt!503547 (array!73797 (store (arr!35545 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36082 _keys!1208)))))

(declare-fun b!1133203 () Bool)

(declare-fun e!644979 () Bool)

(declare-fun e!644982 () Bool)

(assert (=> b!1133203 (= e!644979 e!644982)))

(declare-fun res!756754 () Bool)

(assert (=> b!1133203 (=> res!756754 e!644982)))

(assert (=> b!1133203 (= res!756754 (not (= (select (arr!35545 _keys!1208) from!1455) k!934)))))

(declare-fun e!644983 () Bool)

(assert (=> b!1133203 e!644983))

(declare-fun c!110531 () Bool)

(assert (=> b!1133203 (= c!110531 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43109 0))(
  ( (V!43110 (val!14300 Int)) )
))
(declare-fun zeroValue!944 () V!43109)

(declare-datatypes ((Unit!37075 0))(
  ( (Unit!37076) )
))
(declare-fun lt!503537 () Unit!37075)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13534 0))(
  ( (ValueCellFull!13534 (v!16938 V!43109)) (EmptyCell!13534) )
))
(declare-datatypes ((array!73798 0))(
  ( (array!73799 (arr!35546 (Array (_ BitVec 32) ValueCell!13534)) (size!36083 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73798)

(declare-fun minValue!944 () V!43109)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!443 (array!73796 array!73798 (_ BitVec 32) (_ BitVec 32) V!43109 V!43109 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37075)

(assert (=> b!1133203 (= lt!503537 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((tuple2!18122 0))(
  ( (tuple2!18123 (_1!9071 (_ BitVec 64)) (_2!9071 V!43109)) )
))
(declare-datatypes ((List!24936 0))(
  ( (Nil!24933) (Cons!24932 (h!26141 tuple2!18122) (t!35892 List!24936)) )
))
(declare-datatypes ((ListLongMap!16103 0))(
  ( (ListLongMap!16104 (toList!8067 List!24936)) )
))
(declare-fun lt!503546 () ListLongMap!16103)

(declare-fun c!110529 () Bool)

(declare-fun call!49031 () Unit!37075)

(declare-fun bm!49022 () Bool)

(declare-fun c!110532 () Bool)

(declare-fun addStillContains!727 (ListLongMap!16103 (_ BitVec 64) V!43109 (_ BitVec 64)) Unit!37075)

(assert (=> bm!49022 (= call!49031 (addStillContains!727 lt!503546 (ite (or c!110529 c!110532) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110529 c!110532) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1133204 () Bool)

(declare-fun e!644984 () Bool)

(declare-fun mapRes!44555 () Bool)

(assert (=> b!1133204 (= e!644984 (and e!644971 mapRes!44555))))

(declare-fun condMapEmpty!44555 () Bool)

(declare-fun mapDefault!44555 () ValueCell!13534)


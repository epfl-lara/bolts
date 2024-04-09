; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98006 () Bool)

(assert start!98006)

(declare-fun b_free!23671 () Bool)

(declare-fun b_next!23671 () Bool)

(assert (=> start!98006 (= b_free!23671 (not b_next!23671))))

(declare-fun tp!83717 () Bool)

(declare-fun b_and!38147 () Bool)

(assert (=> start!98006 (= tp!83717 b_and!38147)))

(declare-fun res!750456 () Bool)

(declare-fun e!639467 () Bool)

(assert (=> start!98006 (=> (not res!750456) (not e!639467))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73228 0))(
  ( (array!73229 (arr!35263 (Array (_ BitVec 32) (_ BitVec 64))) (size!35800 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73228)

(assert (=> start!98006 (= res!750456 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35800 _keys!1208))))))

(assert (=> start!98006 e!639467))

(declare-fun tp_is_empty!28201 () Bool)

(assert (=> start!98006 tp_is_empty!28201))

(declare-fun array_inv!26950 (array!73228) Bool)

(assert (=> start!98006 (array_inv!26950 _keys!1208)))

(assert (=> start!98006 true))

(assert (=> start!98006 tp!83717))

(declare-datatypes ((V!42729 0))(
  ( (V!42730 (val!14157 Int)) )
))
(declare-datatypes ((ValueCell!13391 0))(
  ( (ValueCellFull!13391 (v!16791 V!42729)) (EmptyCell!13391) )
))
(declare-datatypes ((array!73230 0))(
  ( (array!73231 (arr!35264 (Array (_ BitVec 32) ValueCell!13391)) (size!35801 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73230)

(declare-fun e!639469 () Bool)

(declare-fun array_inv!26951 (array!73230) Bool)

(assert (=> start!98006 (and (array_inv!26951 _values!996) e!639469)))

(declare-fun b!1123163 () Bool)

(declare-fun res!750459 () Bool)

(assert (=> b!1123163 (=> (not res!750459) (not e!639467))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123163 (= res!750459 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44119 () Bool)

(declare-fun mapRes!44119 () Bool)

(assert (=> mapIsEmpty!44119 mapRes!44119))

(declare-fun zeroValue!944 () V!42729)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17852 0))(
  ( (tuple2!17853 (_1!8936 (_ BitVec 64)) (_2!8936 V!42729)) )
))
(declare-datatypes ((List!24685 0))(
  ( (Nil!24682) (Cons!24681 (h!25890 tuple2!17852) (t!35355 List!24685)) )
))
(declare-datatypes ((ListLongMap!15833 0))(
  ( (ListLongMap!15834 (toList!7932 List!24685)) )
))
(declare-fun call!47297 () ListLongMap!15833)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42729)

(declare-fun bm!47293 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4392 (array!73228 array!73230 (_ BitVec 32) (_ BitVec 32) V!42729 V!42729 (_ BitVec 32) Int) ListLongMap!15833)

(assert (=> bm!47293 (= call!47297 (getCurrentListMapNoExtraKeys!4392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123164 () Bool)

(declare-fun res!750462 () Bool)

(assert (=> b!1123164 (=> (not res!750462) (not e!639467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73228 (_ BitVec 32)) Bool)

(assert (=> b!1123164 (= res!750462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123165 () Bool)

(declare-fun res!750468 () Bool)

(assert (=> b!1123165 (=> (not res!750468) (not e!639467))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1123165 (= res!750468 (= (select (arr!35263 _keys!1208) i!673) k!934))))

(declare-fun b!1123166 () Bool)

(declare-fun res!750458 () Bool)

(assert (=> b!1123166 (=> (not res!750458) (not e!639467))))

(assert (=> b!1123166 (= res!750458 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35800 _keys!1208))))))

(declare-fun b!1123167 () Bool)

(declare-fun res!750463 () Bool)

(assert (=> b!1123167 (=> (not res!750463) (not e!639467))))

(declare-datatypes ((List!24686 0))(
  ( (Nil!24683) (Cons!24682 (h!25891 (_ BitVec 64)) (t!35356 List!24686)) )
))
(declare-fun arrayNoDuplicates!0 (array!73228 (_ BitVec 32) List!24686) Bool)

(assert (=> b!1123167 (= res!750463 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24683))))

(declare-fun e!639466 () Bool)

(declare-fun b!1123168 () Bool)

(declare-fun call!47296 () ListLongMap!15833)

(declare-fun -!1091 (ListLongMap!15833 (_ BitVec 64)) ListLongMap!15833)

(assert (=> b!1123168 (= e!639466 (= call!47296 (-!1091 call!47297 k!934)))))

(declare-fun b!1123169 () Bool)

(declare-fun e!639468 () Bool)

(assert (=> b!1123169 (= e!639468 true)))

(declare-fun lt!498974 () Bool)

(declare-fun contains!6449 (ListLongMap!15833 (_ BitVec 64)) Bool)

(assert (=> b!1123169 (= lt!498974 (contains!6449 (getCurrentListMapNoExtraKeys!4392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1123170 () Bool)

(declare-fun e!639470 () Bool)

(declare-fun e!639471 () Bool)

(assert (=> b!1123170 (= e!639470 (not e!639471))))

(declare-fun res!750460 () Bool)

(assert (=> b!1123170 (=> res!750460 e!639471)))

(assert (=> b!1123170 (= res!750460 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123170 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36769 0))(
  ( (Unit!36770) )
))
(declare-fun lt!498972 () Unit!36769)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73228 (_ BitVec 64) (_ BitVec 32)) Unit!36769)

(assert (=> b!1123170 (= lt!498972 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1123171 () Bool)

(assert (=> b!1123171 (= e!639466 (= call!47296 call!47297))))

(declare-fun b!1123172 () Bool)

(declare-fun e!639473 () Bool)

(assert (=> b!1123172 (= e!639473 tp_is_empty!28201)))

(declare-fun b!1123173 () Bool)

(assert (=> b!1123173 (= e!639469 (and e!639473 mapRes!44119))))

(declare-fun condMapEmpty!44119 () Bool)

(declare-fun mapDefault!44119 () ValueCell!13391)


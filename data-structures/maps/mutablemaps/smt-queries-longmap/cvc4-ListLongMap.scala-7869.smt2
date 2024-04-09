; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97998 () Bool)

(assert start!97998)

(declare-fun b_free!23663 () Bool)

(declare-fun b_next!23663 () Bool)

(assert (=> start!97998 (= b_free!23663 (not b_next!23663))))

(declare-fun tp!83693 () Bool)

(declare-fun b_and!38131 () Bool)

(assert (=> start!97998 (= tp!83693 b_and!38131)))

(declare-fun mapNonEmpty!44107 () Bool)

(declare-fun mapRes!44107 () Bool)

(declare-fun tp!83694 () Bool)

(declare-fun e!639349 () Bool)

(assert (=> mapNonEmpty!44107 (= mapRes!44107 (and tp!83694 e!639349))))

(declare-datatypes ((V!42717 0))(
  ( (V!42718 (val!14153 Int)) )
))
(declare-datatypes ((ValueCell!13387 0))(
  ( (ValueCellFull!13387 (v!16787 V!42717)) (EmptyCell!13387) )
))
(declare-fun mapValue!44107 () ValueCell!13387)

(declare-fun mapKey!44107 () (_ BitVec 32))

(declare-datatypes ((array!73212 0))(
  ( (array!73213 (arr!35255 (Array (_ BitVec 32) ValueCell!13387)) (size!35792 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73212)

(declare-fun mapRest!44107 () (Array (_ BitVec 32) ValueCell!13387))

(assert (=> mapNonEmpty!44107 (= (arr!35255 _values!996) (store mapRest!44107 mapKey!44107 mapValue!44107))))

(declare-fun b!1122939 () Bool)

(declare-fun e!639352 () Bool)

(declare-fun tp_is_empty!28193 () Bool)

(assert (=> b!1122939 (= e!639352 tp_is_empty!28193)))

(declare-fun b!1122940 () Bool)

(declare-fun res!750304 () Bool)

(declare-fun e!639351 () Bool)

(assert (=> b!1122940 (=> (not res!750304) (not e!639351))))

(declare-datatypes ((array!73214 0))(
  ( (array!73215 (arr!35256 (Array (_ BitVec 32) (_ BitVec 64))) (size!35793 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73214)

(declare-datatypes ((List!24678 0))(
  ( (Nil!24675) (Cons!24674 (h!25883 (_ BitVec 64)) (t!35340 List!24678)) )
))
(declare-fun arrayNoDuplicates!0 (array!73214 (_ BitVec 32) List!24678) Bool)

(assert (=> b!1122940 (= res!750304 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24675))))

(declare-fun res!750305 () Bool)

(assert (=> start!97998 (=> (not res!750305) (not e!639351))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97998 (= res!750305 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35793 _keys!1208))))))

(assert (=> start!97998 e!639351))

(assert (=> start!97998 tp_is_empty!28193))

(declare-fun array_inv!26942 (array!73214) Bool)

(assert (=> start!97998 (array_inv!26942 _keys!1208)))

(assert (=> start!97998 true))

(assert (=> start!97998 tp!83693))

(declare-fun e!639345 () Bool)

(declare-fun array_inv!26943 (array!73212) Bool)

(assert (=> start!97998 (and (array_inv!26943 _values!996) e!639345)))

(declare-fun mapIsEmpty!44107 () Bool)

(assert (=> mapIsEmpty!44107 mapRes!44107))

(declare-fun b!1122941 () Bool)

(declare-fun e!639344 () Bool)

(declare-fun e!639347 () Bool)

(assert (=> b!1122941 (= e!639344 (not e!639347))))

(declare-fun res!750311 () Bool)

(assert (=> b!1122941 (=> res!750311 e!639347)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122941 (= res!750311 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122941 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36763 0))(
  ( (Unit!36764) )
))
(declare-fun lt!498888 () Unit!36763)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73214 (_ BitVec 64) (_ BitVec 32)) Unit!36763)

(assert (=> b!1122941 (= lt!498888 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1122942 () Bool)

(declare-fun res!750308 () Bool)

(assert (=> b!1122942 (=> (not res!750308) (not e!639351))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73214 (_ BitVec 32)) Bool)

(assert (=> b!1122942 (= res!750308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((tuple2!17844 0))(
  ( (tuple2!17845 (_1!8932 (_ BitVec 64)) (_2!8932 V!42717)) )
))
(declare-datatypes ((List!24679 0))(
  ( (Nil!24676) (Cons!24675 (h!25884 tuple2!17844) (t!35341 List!24679)) )
))
(declare-datatypes ((ListLongMap!15825 0))(
  ( (ListLongMap!15826 (toList!7928 List!24679)) )
))
(declare-fun call!47273 () ListLongMap!15825)

(declare-fun e!639348 () Bool)

(declare-fun call!47272 () ListLongMap!15825)

(declare-fun b!1122943 () Bool)

(declare-fun -!1089 (ListLongMap!15825 (_ BitVec 64)) ListLongMap!15825)

(assert (=> b!1122943 (= e!639348 (= call!47273 (-!1089 call!47272 k!934)))))

(declare-fun b!1122944 () Bool)

(assert (=> b!1122944 (= e!639351 e!639344)))

(declare-fun res!750307 () Bool)

(assert (=> b!1122944 (=> (not res!750307) (not e!639344))))

(declare-fun lt!498892 () array!73214)

(assert (=> b!1122944 (= res!750307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498892 mask!1564))))

(assert (=> b!1122944 (= lt!498892 (array!73215 (store (arr!35256 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35793 _keys!1208)))))

(declare-fun b!1122945 () Bool)

(declare-fun res!750301 () Bool)

(assert (=> b!1122945 (=> (not res!750301) (not e!639351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122945 (= res!750301 (validMask!0 mask!1564))))

(declare-fun b!1122946 () Bool)

(declare-fun res!750300 () Bool)

(assert (=> b!1122946 (=> (not res!750300) (not e!639351))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1122946 (= res!750300 (and (= (size!35792 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35793 _keys!1208) (size!35792 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122947 () Bool)

(assert (=> b!1122947 (= e!639348 (= call!47273 call!47272))))

(declare-fun b!1122948 () Bool)

(declare-fun e!639353 () Bool)

(declare-fun e!639346 () Bool)

(assert (=> b!1122948 (= e!639353 e!639346)))

(declare-fun res!750312 () Bool)

(assert (=> b!1122948 (=> res!750312 e!639346)))

(assert (=> b!1122948 (= res!750312 (not (= (select (arr!35256 _keys!1208) from!1455) k!934)))))

(assert (=> b!1122948 e!639348))

(declare-fun c!109445 () Bool)

(assert (=> b!1122948 (= c!109445 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42717)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!498889 () Unit!36763)

(declare-fun minValue!944 () V!42717)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!341 (array!73214 array!73212 (_ BitVec 32) (_ BitVec 32) V!42717 V!42717 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36763)

(assert (=> b!1122948 (= lt!498889 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!341 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122949 () Bool)

(assert (=> b!1122949 (= e!639346 true)))

(declare-fun lt!498891 () Bool)

(declare-fun contains!6445 (ListLongMap!15825 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4388 (array!73214 array!73212 (_ BitVec 32) (_ BitVec 32) V!42717 V!42717 (_ BitVec 32) Int) ListLongMap!15825)

(assert (=> b!1122949 (= lt!498891 (contains!6445 (getCurrentListMapNoExtraKeys!4388 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1122950 () Bool)

(assert (=> b!1122950 (= e!639345 (and e!639352 mapRes!44107))))

(declare-fun condMapEmpty!44107 () Bool)

(declare-fun mapDefault!44107 () ValueCell!13387)


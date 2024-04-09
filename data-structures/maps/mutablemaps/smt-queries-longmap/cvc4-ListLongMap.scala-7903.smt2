; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98202 () Bool)

(assert start!98202)

(declare-fun b_free!23867 () Bool)

(declare-fun b_next!23867 () Bool)

(assert (=> start!98202 (= b_free!23867 (not b_next!23867))))

(declare-fun tp!84305 () Bool)

(declare-fun b_and!38539 () Bool)

(assert (=> start!98202 (= tp!84305 b_and!38539)))

(declare-fun b!1128859 () Bool)

(declare-fun e!642494 () Bool)

(assert (=> b!1128859 (= e!642494 true)))

(declare-datatypes ((V!42989 0))(
  ( (V!42990 (val!14255 Int)) )
))
(declare-fun zeroValue!944 () V!42989)

(declare-datatypes ((array!73612 0))(
  ( (array!73613 (arr!35455 (Array (_ BitVec 32) (_ BitVec 64))) (size!35992 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73612)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13489 0))(
  ( (ValueCellFull!13489 (v!16889 V!42989)) (EmptyCell!13489) )
))
(declare-datatypes ((array!73614 0))(
  ( (array!73615 (arr!35456 (Array (_ BitVec 32) ValueCell!13489)) (size!35993 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73614)

(declare-fun lt!501099 () Bool)

(declare-fun minValue!944 () V!42989)

(declare-datatypes ((tuple2!18034 0))(
  ( (tuple2!18035 (_1!9027 (_ BitVec 64)) (_2!9027 V!42989)) )
))
(declare-datatypes ((List!24854 0))(
  ( (Nil!24851) (Cons!24850 (h!26059 tuple2!18034) (t!35720 List!24854)) )
))
(declare-datatypes ((ListLongMap!16015 0))(
  ( (ListLongMap!16016 (toList!8023 List!24854)) )
))
(declare-fun contains!6517 (ListLongMap!16015 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4477 (array!73612 array!73614 (_ BitVec 32) (_ BitVec 32) V!42989 V!42989 (_ BitVec 32) Int) ListLongMap!16015)

(assert (=> b!1128859 (= lt!501099 (contains!6517 (getCurrentListMapNoExtraKeys!4477 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapIsEmpty!44413 () Bool)

(declare-fun mapRes!44413 () Bool)

(assert (=> mapIsEmpty!44413 mapRes!44413))

(declare-fun b!1128860 () Bool)

(declare-fun res!754492 () Bool)

(declare-fun e!642502 () Bool)

(assert (=> b!1128860 (=> (not res!754492) (not e!642502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128860 (= res!754492 (validKeyInArray!0 k!934))))

(declare-fun b!1128861 () Bool)

(declare-fun res!754493 () Bool)

(declare-fun e!642496 () Bool)

(assert (=> b!1128861 (=> (not res!754493) (not e!642496))))

(declare-fun lt!501095 () array!73612)

(declare-datatypes ((List!24855 0))(
  ( (Nil!24852) (Cons!24851 (h!26060 (_ BitVec 64)) (t!35721 List!24855)) )
))
(declare-fun arrayNoDuplicates!0 (array!73612 (_ BitVec 32) List!24855) Bool)

(assert (=> b!1128861 (= res!754493 (arrayNoDuplicates!0 lt!501095 #b00000000000000000000000000000000 Nil!24852))))

(declare-fun b!1128862 () Bool)

(declare-fun e!642499 () Bool)

(assert (=> b!1128862 (= e!642496 (not e!642499))))

(declare-fun res!754485 () Bool)

(assert (=> b!1128862 (=> res!754485 e!642499)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128862 (= res!754485 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128862 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36931 0))(
  ( (Unit!36932) )
))
(declare-fun lt!501094 () Unit!36931)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73612 (_ BitVec 64) (_ BitVec 32)) Unit!36931)

(assert (=> b!1128862 (= lt!501094 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1128863 () Bool)

(declare-fun res!754486 () Bool)

(assert (=> b!1128863 (=> (not res!754486) (not e!642502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128863 (= res!754486 (validMask!0 mask!1564))))

(declare-fun b!1128864 () Bool)

(assert (=> b!1128864 (= e!642502 e!642496)))

(declare-fun res!754494 () Bool)

(assert (=> b!1128864 (=> (not res!754494) (not e!642496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73612 (_ BitVec 32)) Bool)

(assert (=> b!1128864 (= res!754494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501095 mask!1564))))

(assert (=> b!1128864 (= lt!501095 (array!73613 (store (arr!35455 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35992 _keys!1208)))))

(declare-fun mapNonEmpty!44413 () Bool)

(declare-fun tp!84306 () Bool)

(declare-fun e!642497 () Bool)

(assert (=> mapNonEmpty!44413 (= mapRes!44413 (and tp!84306 e!642497))))

(declare-fun mapValue!44413 () ValueCell!13489)

(declare-fun mapRest!44413 () (Array (_ BitVec 32) ValueCell!13489))

(declare-fun mapKey!44413 () (_ BitVec 32))

(assert (=> mapNonEmpty!44413 (= (arr!35456 _values!996) (store mapRest!44413 mapKey!44413 mapValue!44413))))

(declare-fun b!1128865 () Bool)

(declare-fun e!642500 () Bool)

(declare-fun tp_is_empty!28397 () Bool)

(assert (=> b!1128865 (= e!642500 tp_is_empty!28397)))

(declare-fun b!1128866 () Bool)

(declare-fun res!754491 () Bool)

(assert (=> b!1128866 (=> (not res!754491) (not e!642502))))

(assert (=> b!1128866 (= res!754491 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24852))))

(declare-fun res!754490 () Bool)

(assert (=> start!98202 (=> (not res!754490) (not e!642502))))

(assert (=> start!98202 (= res!754490 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35992 _keys!1208))))))

(assert (=> start!98202 e!642502))

(assert (=> start!98202 tp_is_empty!28397))

(declare-fun array_inv!27070 (array!73612) Bool)

(assert (=> start!98202 (array_inv!27070 _keys!1208)))

(assert (=> start!98202 true))

(assert (=> start!98202 tp!84305))

(declare-fun e!642503 () Bool)

(declare-fun array_inv!27071 (array!73614) Bool)

(assert (=> start!98202 (and (array_inv!27071 _values!996) e!642503)))

(declare-fun b!1128858 () Bool)

(assert (=> b!1128858 (= e!642497 tp_is_empty!28397)))

(declare-fun b!1128867 () Bool)

(declare-fun e!642495 () Bool)

(declare-fun call!47884 () ListLongMap!16015)

(declare-fun call!47885 () ListLongMap!16015)

(assert (=> b!1128867 (= e!642495 (= call!47884 call!47885))))

(declare-fun b!1128868 () Bool)

(declare-fun res!754497 () Bool)

(assert (=> b!1128868 (=> (not res!754497) (not e!642502))))

(assert (=> b!1128868 (= res!754497 (and (= (size!35993 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35992 _keys!1208) (size!35993 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47881 () Bool)

(declare-fun lt!501096 () array!73614)

(assert (=> bm!47881 (= call!47884 (getCurrentListMapNoExtraKeys!4477 lt!501095 lt!501096 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128869 () Bool)

(assert (=> b!1128869 (= e!642503 (and e!642500 mapRes!44413))))

(declare-fun condMapEmpty!44413 () Bool)

(declare-fun mapDefault!44413 () ValueCell!13489)


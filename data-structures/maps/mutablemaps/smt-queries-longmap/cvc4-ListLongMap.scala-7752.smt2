; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97296 () Bool)

(assert start!97296)

(declare-fun b_free!23231 () Bool)

(declare-fun b_next!23231 () Bool)

(assert (=> start!97296 (= b_free!23231 (not b_next!23231))))

(declare-fun tp!81993 () Bool)

(declare-fun b_and!37311 () Bool)

(assert (=> start!97296 (= tp!81993 b_and!37311)))

(declare-fun b!1107095 () Bool)

(declare-fun e!631726 () Bool)

(declare-fun tp_is_empty!27491 () Bool)

(assert (=> b!1107095 (= e!631726 tp_is_empty!27491)))

(declare-fun res!738941 () Bool)

(declare-fun e!631721 () Bool)

(assert (=> start!97296 (=> (not res!738941) (not e!631721))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71852 0))(
  ( (array!71853 (arr!34575 (Array (_ BitVec 32) (_ BitVec 64))) (size!35112 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71852)

(assert (=> start!97296 (= res!738941 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35112 _keys!1208))))))

(assert (=> start!97296 e!631721))

(assert (=> start!97296 tp_is_empty!27491))

(declare-fun array_inv!26472 (array!71852) Bool)

(assert (=> start!97296 (array_inv!26472 _keys!1208)))

(assert (=> start!97296 true))

(assert (=> start!97296 tp!81993))

(declare-datatypes ((V!41781 0))(
  ( (V!41782 (val!13802 Int)) )
))
(declare-datatypes ((ValueCell!13036 0))(
  ( (ValueCellFull!13036 (v!16436 V!41781)) (EmptyCell!13036) )
))
(declare-datatypes ((array!71854 0))(
  ( (array!71855 (arr!34576 (Array (_ BitVec 32) ValueCell!13036)) (size!35113 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71854)

(declare-fun e!631724 () Bool)

(declare-fun array_inv!26473 (array!71854) Bool)

(assert (=> start!97296 (and (array_inv!26473 _values!996) e!631724)))

(declare-fun b!1107096 () Bool)

(declare-fun res!738940 () Bool)

(assert (=> b!1107096 (=> (not res!738940) (not e!631721))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1107096 (= res!738940 (= (select (arr!34575 _keys!1208) i!673) k!934))))

(declare-fun b!1107097 () Bool)

(declare-fun res!738939 () Bool)

(assert (=> b!1107097 (=> (not res!738939) (not e!631721))))

(declare-datatypes ((List!24234 0))(
  ( (Nil!24231) (Cons!24230 (h!25439 (_ BitVec 64)) (t!34518 List!24234)) )
))
(declare-fun arrayNoDuplicates!0 (array!71852 (_ BitVec 32) List!24234) Bool)

(assert (=> b!1107097 (= res!738939 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24231))))

(declare-fun mapIsEmpty!43054 () Bool)

(declare-fun mapRes!43054 () Bool)

(assert (=> mapIsEmpty!43054 mapRes!43054))

(declare-fun b!1107098 () Bool)

(declare-fun res!738945 () Bool)

(assert (=> b!1107098 (=> (not res!738945) (not e!631721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107098 (= res!738945 (validKeyInArray!0 k!934))))

(declare-fun b!1107099 () Bool)

(declare-fun res!738935 () Bool)

(assert (=> b!1107099 (=> (not res!738935) (not e!631721))))

(assert (=> b!1107099 (= res!738935 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35112 _keys!1208))))))

(declare-fun b!1107100 () Bool)

(declare-fun e!631722 () Bool)

(assert (=> b!1107100 (= e!631722 true)))

(declare-fun e!631725 () Bool)

(assert (=> b!1107100 e!631725))

(declare-fun c!108974 () Bool)

(assert (=> b!1107100 (= c!108974 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41781)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36271 0))(
  ( (Unit!36272) )
))
(declare-fun lt!495555 () Unit!36271)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41781)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!246 (array!71852 array!71854 (_ BitVec 32) (_ BitVec 32) V!41781 V!41781 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36271)

(assert (=> b!1107100 (= lt!495555 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!246 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((tuple2!17496 0))(
  ( (tuple2!17497 (_1!8758 (_ BitVec 64)) (_2!8758 V!41781)) )
))
(declare-datatypes ((List!24235 0))(
  ( (Nil!24232) (Cons!24231 (h!25440 tuple2!17496) (t!34519 List!24235)) )
))
(declare-datatypes ((ListLongMap!15477 0))(
  ( (ListLongMap!15478 (toList!7754 List!24235)) )
))
(declare-fun call!46390 () ListLongMap!15477)

(declare-fun bm!46387 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4223 (array!71852 array!71854 (_ BitVec 32) (_ BitVec 32) V!41781 V!41781 (_ BitVec 32) Int) ListLongMap!15477)

(assert (=> bm!46387 (= call!46390 (getCurrentListMapNoExtraKeys!4223 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107101 () Bool)

(declare-fun res!738936 () Bool)

(declare-fun e!631723 () Bool)

(assert (=> b!1107101 (=> (not res!738936) (not e!631723))))

(declare-fun lt!495553 () array!71852)

(assert (=> b!1107101 (= res!738936 (arrayNoDuplicates!0 lt!495553 #b00000000000000000000000000000000 Nil!24231))))

(declare-fun call!46391 () ListLongMap!15477)

(declare-fun b!1107102 () Bool)

(declare-fun -!990 (ListLongMap!15477 (_ BitVec 64)) ListLongMap!15477)

(assert (=> b!1107102 (= e!631725 (= call!46391 (-!990 call!46390 k!934)))))

(declare-fun b!1107103 () Bool)

(assert (=> b!1107103 (= e!631723 (not e!631722))))

(declare-fun res!738943 () Bool)

(assert (=> b!1107103 (=> res!738943 e!631722)))

(assert (=> b!1107103 (= res!738943 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35112 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107103 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!495554 () Unit!36271)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71852 (_ BitVec 64) (_ BitVec 32)) Unit!36271)

(assert (=> b!1107103 (= lt!495554 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1107104 () Bool)

(declare-fun e!631727 () Bool)

(assert (=> b!1107104 (= e!631727 tp_is_empty!27491)))

(declare-fun bm!46388 () Bool)

(declare-fun dynLambda!2353 (Int (_ BitVec 64)) V!41781)

(assert (=> bm!46388 (= call!46391 (getCurrentListMapNoExtraKeys!4223 lt!495553 (array!71855 (store (arr!34576 _values!996) i!673 (ValueCellFull!13036 (dynLambda!2353 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35113 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107105 () Bool)

(declare-fun res!738942 () Bool)

(assert (=> b!1107105 (=> (not res!738942) (not e!631721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71852 (_ BitVec 32)) Bool)

(assert (=> b!1107105 (= res!738942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107106 () Bool)

(assert (=> b!1107106 (= e!631721 e!631723)))

(declare-fun res!738938 () Bool)

(assert (=> b!1107106 (=> (not res!738938) (not e!631723))))

(assert (=> b!1107106 (= res!738938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495553 mask!1564))))

(assert (=> b!1107106 (= lt!495553 (array!71853 (store (arr!34575 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35112 _keys!1208)))))

(declare-fun b!1107107 () Bool)

(declare-fun res!738937 () Bool)

(assert (=> b!1107107 (=> (not res!738937) (not e!631721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107107 (= res!738937 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43054 () Bool)

(declare-fun tp!81992 () Bool)

(assert (=> mapNonEmpty!43054 (= mapRes!43054 (and tp!81992 e!631726))))

(declare-fun mapKey!43054 () (_ BitVec 32))

(declare-fun mapValue!43054 () ValueCell!13036)

(declare-fun mapRest!43054 () (Array (_ BitVec 32) ValueCell!13036))

(assert (=> mapNonEmpty!43054 (= (arr!34576 _values!996) (store mapRest!43054 mapKey!43054 mapValue!43054))))

(declare-fun b!1107108 () Bool)

(assert (=> b!1107108 (= e!631724 (and e!631727 mapRes!43054))))

(declare-fun condMapEmpty!43054 () Bool)

(declare-fun mapDefault!43054 () ValueCell!13036)


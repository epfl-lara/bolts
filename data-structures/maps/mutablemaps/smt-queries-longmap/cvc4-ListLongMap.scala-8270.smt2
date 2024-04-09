; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100608 () Bool)

(assert start!100608)

(declare-fun b_free!25895 () Bool)

(declare-fun b_next!25895 () Bool)

(assert (=> start!100608 (= b_free!25895 (not b_next!25895))))

(declare-fun tp!90676 () Bool)

(declare-fun b_and!42691 () Bool)

(assert (=> start!100608 (= tp!90676 b_and!42691)))

(declare-datatypes ((V!45925 0))(
  ( (V!45926 (val!15356 Int)) )
))
(declare-fun zeroValue!944 () V!45925)

(declare-fun bm!57936 () Bool)

(declare-datatypes ((tuple2!19820 0))(
  ( (tuple2!19821 (_1!9920 (_ BitVec 64)) (_2!9920 V!45925)) )
))
(declare-datatypes ((List!26648 0))(
  ( (Nil!26645) (Cons!26644 (h!27853 tuple2!19820) (t!39530 List!26648)) )
))
(declare-datatypes ((ListLongMap!17801 0))(
  ( (ListLongMap!17802 (toList!8916 List!26648)) )
))
(declare-fun lt!545294 () ListLongMap!17801)

(declare-datatypes ((Unit!39806 0))(
  ( (Unit!39807) )
))
(declare-fun call!57944 () Unit!39806)

(declare-fun c!117716 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!117718 () Bool)

(declare-fun minValue!944 () V!45925)

(declare-fun addStillContains!1015 (ListLongMap!17801 (_ BitVec 64) V!45925 (_ BitVec 64)) Unit!39806)

(assert (=> bm!57936 (= call!57944 (addStillContains!1015 lt!545294 (ite (or c!117718 c!117716) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117718 c!117716) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1202998 () Bool)

(declare-fun e!683155 () Unit!39806)

(declare-fun lt!545287 () Unit!39806)

(assert (=> b!1202998 (= e!683155 lt!545287)))

(declare-fun call!57946 () Unit!39806)

(assert (=> b!1202998 (= lt!545287 call!57946)))

(declare-fun call!57939 () Bool)

(assert (=> b!1202998 call!57939))

(declare-fun b!1202999 () Bool)

(declare-fun e!683157 () Bool)

(declare-fun tp_is_empty!30599 () Bool)

(assert (=> b!1202999 (= e!683157 tp_is_empty!30599)))

(declare-fun b!1203000 () Bool)

(declare-fun res!800709 () Bool)

(declare-fun e!683145 () Bool)

(assert (=> b!1203000 (=> (not res!800709) (not e!683145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203000 (= res!800709 (validKeyInArray!0 k!934))))

(declare-fun b!1203001 () Bool)

(declare-fun e!683150 () Bool)

(assert (=> b!1203001 (= e!683150 true)))

(declare-fun lt!545293 () Unit!39806)

(declare-fun e!683147 () Unit!39806)

(assert (=> b!1203001 (= lt!545293 e!683147)))

(declare-fun lt!545288 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1203001 (= c!117718 (and (not lt!545288) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1203001 (= lt!545288 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!47741 () Bool)

(declare-fun mapRes!47741 () Bool)

(declare-fun tp!90675 () Bool)

(declare-fun e!683153 () Bool)

(assert (=> mapNonEmpty!47741 (= mapRes!47741 (and tp!90675 e!683153))))

(declare-datatypes ((ValueCell!14590 0))(
  ( (ValueCellFull!14590 (v!17995 V!45925)) (EmptyCell!14590) )
))
(declare-fun mapValue!47741 () ValueCell!14590)

(declare-fun mapKey!47741 () (_ BitVec 32))

(declare-fun mapRest!47741 () (Array (_ BitVec 32) ValueCell!14590))

(declare-datatypes ((array!77948 0))(
  ( (array!77949 (arr!37615 (Array (_ BitVec 32) ValueCell!14590)) (size!38152 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77948)

(assert (=> mapNonEmpty!47741 (= (arr!37615 _values!996) (store mapRest!47741 mapKey!47741 mapValue!47741))))

(declare-fun b!1203002 () Bool)

(declare-fun e!683148 () Unit!39806)

(assert (=> b!1203002 (= e!683147 e!683148)))

(assert (=> b!1203002 (= c!117716 (and (not lt!545288) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1203003 () Bool)

(assert (=> b!1203003 call!57939))

(declare-fun lt!545290 () Unit!39806)

(assert (=> b!1203003 (= lt!545290 call!57946)))

(assert (=> b!1203003 (= e!683148 lt!545290)))

(declare-fun b!1203004 () Bool)

(declare-fun res!800705 () Bool)

(assert (=> b!1203004 (=> (not res!800705) (not e!683145))))

(declare-datatypes ((array!77950 0))(
  ( (array!77951 (arr!37616 (Array (_ BitVec 32) (_ BitVec 64))) (size!38153 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77950)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1203004 (= res!800705 (and (= (size!38152 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38153 _keys!1208) (size!38152 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1203005 () Bool)

(declare-fun res!800715 () Bool)

(assert (=> b!1203005 (=> (not res!800715) (not e!683145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1203005 (= res!800715 (validMask!0 mask!1564))))

(declare-fun res!800708 () Bool)

(assert (=> start!100608 (=> (not res!800708) (not e!683145))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100608 (= res!800708 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38153 _keys!1208))))))

(assert (=> start!100608 e!683145))

(assert (=> start!100608 tp_is_empty!30599))

(declare-fun array_inv!28556 (array!77950) Bool)

(assert (=> start!100608 (array_inv!28556 _keys!1208)))

(assert (=> start!100608 true))

(assert (=> start!100608 tp!90676))

(declare-fun e!683156 () Bool)

(declare-fun array_inv!28557 (array!77948) Bool)

(assert (=> start!100608 (and (array_inv!28557 _values!996) e!683156)))

(declare-fun b!1203006 () Bool)

(declare-fun res!800712 () Bool)

(assert (=> b!1203006 (=> (not res!800712) (not e!683145))))

(declare-datatypes ((List!26649 0))(
  ( (Nil!26646) (Cons!26645 (h!27854 (_ BitVec 64)) (t!39531 List!26649)) )
))
(declare-fun arrayNoDuplicates!0 (array!77950 (_ BitVec 32) List!26649) Bool)

(assert (=> b!1203006 (= res!800712 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26646))))

(declare-fun b!1203007 () Bool)

(declare-fun lt!545283 () Unit!39806)

(assert (=> b!1203007 (= e!683147 lt!545283)))

(declare-fun lt!545284 () Unit!39806)

(assert (=> b!1203007 (= lt!545284 call!57944)))

(declare-fun lt!545291 () ListLongMap!17801)

(declare-fun +!3951 (ListLongMap!17801 tuple2!19820) ListLongMap!17801)

(assert (=> b!1203007 (= lt!545291 (+!3951 lt!545294 (tuple2!19821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!57941 () Bool)

(assert (=> b!1203007 call!57941))

(assert (=> b!1203007 (= lt!545283 (addStillContains!1015 lt!545291 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!57945 () ListLongMap!17801)

(declare-fun contains!6914 (ListLongMap!17801 (_ BitVec 64)) Bool)

(assert (=> b!1203007 (contains!6914 call!57945 k!934)))

(declare-fun b!1203008 () Bool)

(assert (=> b!1203008 (= e!683153 tp_is_empty!30599)))

(declare-fun bm!57937 () Bool)

(assert (=> bm!57937 (= call!57945 (+!3951 (ite c!117718 lt!545291 lt!545294) (ite c!117718 (tuple2!19821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117716 (tuple2!19821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19821 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1203009 () Bool)

(declare-fun e!683146 () Bool)

(assert (=> b!1203009 (= e!683145 e!683146)))

(declare-fun res!800714 () Bool)

(assert (=> b!1203009 (=> (not res!800714) (not e!683146))))

(declare-fun lt!545286 () array!77950)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77950 (_ BitVec 32)) Bool)

(assert (=> b!1203009 (= res!800714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545286 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203009 (= lt!545286 (array!77951 (store (arr!37616 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38153 _keys!1208)))))

(declare-fun bm!57938 () Bool)

(declare-fun call!57942 () ListLongMap!17801)

(assert (=> bm!57938 (= call!57941 (contains!6914 (ite c!117718 lt!545291 call!57942) k!934))))

(declare-fun bm!57939 () Bool)

(assert (=> bm!57939 (= call!57942 call!57945)))

(declare-fun e!683151 () Bool)

(declare-fun call!57940 () ListLongMap!17801)

(declare-fun call!57943 () ListLongMap!17801)

(declare-fun b!1203010 () Bool)

(declare-fun -!1832 (ListLongMap!17801 (_ BitVec 64)) ListLongMap!17801)

(assert (=> b!1203010 (= e!683151 (= call!57943 (-!1832 call!57940 k!934)))))

(declare-fun bm!57940 () Bool)

(assert (=> bm!57940 (= call!57939 call!57941)))

(declare-fun b!1203011 () Bool)

(declare-fun res!800706 () Bool)

(assert (=> b!1203011 (=> (not res!800706) (not e!683146))))

(assert (=> b!1203011 (= res!800706 (arrayNoDuplicates!0 lt!545286 #b00000000000000000000000000000000 Nil!26646))))

(declare-fun mapIsEmpty!47741 () Bool)

(assert (=> mapIsEmpty!47741 mapRes!47741))

(declare-fun b!1203012 () Bool)

(assert (=> b!1203012 (= e!683151 (= call!57943 call!57940))))

(declare-fun bm!57941 () Bool)

(assert (=> bm!57941 (= call!57946 call!57944)))

(declare-fun b!1203013 () Bool)

(assert (=> b!1203013 (= e!683156 (and e!683157 mapRes!47741))))

(declare-fun condMapEmpty!47741 () Bool)

(declare-fun mapDefault!47741 () ValueCell!14590)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97918 () Bool)

(assert start!97918)

(declare-fun b_free!23583 () Bool)

(declare-fun b_next!23583 () Bool)

(assert (=> start!97918 (= b_free!23583 (not b_next!23583))))

(declare-fun tp!83453 () Bool)

(declare-fun b_and!37971 () Bool)

(assert (=> start!97918 (= tp!83453 b_and!37971)))

(declare-fun b!1120766 () Bool)

(declare-fun e!638219 () Bool)

(declare-fun e!638217 () Bool)

(declare-fun mapRes!43987 () Bool)

(assert (=> b!1120766 (= e!638219 (and e!638217 mapRes!43987))))

(declare-fun condMapEmpty!43987 () Bool)

(declare-datatypes ((V!42611 0))(
  ( (V!42612 (val!14113 Int)) )
))
(declare-datatypes ((ValueCell!13347 0))(
  ( (ValueCellFull!13347 (v!16747 V!42611)) (EmptyCell!13347) )
))
(declare-datatypes ((array!73052 0))(
  ( (array!73053 (arr!35175 (Array (_ BitVec 32) ValueCell!13347)) (size!35712 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73052)

(declare-fun mapDefault!43987 () ValueCell!13347)

(assert (=> b!1120766 (= condMapEmpty!43987 (= (arr!35175 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13347)) mapDefault!43987)))))

(declare-fun b!1120767 () Bool)

(declare-fun res!748815 () Bool)

(declare-fun e!638211 () Bool)

(assert (=> b!1120767 (=> (not res!748815) (not e!638211))))

(declare-datatypes ((array!73054 0))(
  ( (array!73055 (arr!35176 (Array (_ BitVec 32) (_ BitVec 64))) (size!35713 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73054)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1120767 (= res!748815 (and (= (size!35712 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35713 _keys!1208) (size!35712 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120768 () Bool)

(declare-fun res!748807 () Bool)

(assert (=> b!1120768 (=> (not res!748807) (not e!638211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120768 (= res!748807 (validMask!0 mask!1564))))

(declare-fun b!1120769 () Bool)

(declare-fun tp_is_empty!28113 () Bool)

(assert (=> b!1120769 (= e!638217 tp_is_empty!28113)))

(declare-fun b!1120770 () Bool)

(declare-fun res!748813 () Bool)

(assert (=> b!1120770 (=> (not res!748813) (not e!638211))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120770 (= res!748813 (validKeyInArray!0 k0!934))))

(declare-fun res!748814 () Bool)

(assert (=> start!97918 (=> (not res!748814) (not e!638211))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97918 (= res!748814 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35713 _keys!1208))))))

(assert (=> start!97918 e!638211))

(assert (=> start!97918 tp_is_empty!28113))

(declare-fun array_inv!26886 (array!73054) Bool)

(assert (=> start!97918 (array_inv!26886 _keys!1208)))

(assert (=> start!97918 true))

(assert (=> start!97918 tp!83453))

(declare-fun array_inv!26887 (array!73052) Bool)

(assert (=> start!97918 (and (array_inv!26887 _values!996) e!638219)))

(declare-fun zeroValue!944 () V!42611)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!47029 () Bool)

(declare-fun minValue!944 () V!42611)

(declare-datatypes ((tuple2!17768 0))(
  ( (tuple2!17769 (_1!8894 (_ BitVec 64)) (_2!8894 V!42611)) )
))
(declare-datatypes ((List!24607 0))(
  ( (Nil!24604) (Cons!24603 (h!25812 tuple2!17768) (t!35189 List!24607)) )
))
(declare-datatypes ((ListLongMap!15749 0))(
  ( (ListLongMap!15750 (toList!7890 List!24607)) )
))
(declare-fun call!47032 () ListLongMap!15749)

(declare-fun lt!498118 () array!73054)

(declare-fun lt!498116 () array!73052)

(declare-fun getCurrentListMapNoExtraKeys!4351 (array!73054 array!73052 (_ BitVec 32) (_ BitVec 32) V!42611 V!42611 (_ BitVec 32) Int) ListLongMap!15749)

(assert (=> bm!47029 (= call!47032 (getCurrentListMapNoExtraKeys!4351 lt!498118 lt!498116 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120771 () Bool)

(declare-fun res!748809 () Bool)

(assert (=> b!1120771 (=> (not res!748809) (not e!638211))))

(declare-datatypes ((List!24608 0))(
  ( (Nil!24605) (Cons!24604 (h!25813 (_ BitVec 64)) (t!35190 List!24608)) )
))
(declare-fun arrayNoDuplicates!0 (array!73054 (_ BitVec 32) List!24608) Bool)

(assert (=> b!1120771 (= res!748809 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24605))))

(declare-fun mapIsEmpty!43987 () Bool)

(assert (=> mapIsEmpty!43987 mapRes!43987))

(declare-fun mapNonEmpty!43987 () Bool)

(declare-fun tp!83454 () Bool)

(declare-fun e!638215 () Bool)

(assert (=> mapNonEmpty!43987 (= mapRes!43987 (and tp!83454 e!638215))))

(declare-fun mapValue!43987 () ValueCell!13347)

(declare-fun mapKey!43987 () (_ BitVec 32))

(declare-fun mapRest!43987 () (Array (_ BitVec 32) ValueCell!13347))

(assert (=> mapNonEmpty!43987 (= (arr!35175 _values!996) (store mapRest!43987 mapKey!43987 mapValue!43987))))

(declare-fun b!1120772 () Bool)

(declare-fun e!638216 () Bool)

(assert (=> b!1120772 (= e!638216 true)))

(declare-fun e!638214 () Bool)

(assert (=> b!1120772 e!638214))

(declare-fun c!109325 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120772 (= c!109325 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36697 0))(
  ( (Unit!36698) )
))
(declare-fun lt!498119 () Unit!36697)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!313 (array!73054 array!73052 (_ BitVec 32) (_ BitVec 32) V!42611 V!42611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36697)

(assert (=> b!1120772 (= lt!498119 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!313 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47033 () ListLongMap!15749)

(declare-fun b!1120773 () Bool)

(declare-fun -!1059 (ListLongMap!15749 (_ BitVec 64)) ListLongMap!15749)

(assert (=> b!1120773 (= e!638214 (= call!47032 (-!1059 call!47033 k0!934)))))

(declare-fun b!1120774 () Bool)

(declare-fun res!748816 () Bool)

(declare-fun e!638218 () Bool)

(assert (=> b!1120774 (=> (not res!748816) (not e!638218))))

(assert (=> b!1120774 (= res!748816 (arrayNoDuplicates!0 lt!498118 #b00000000000000000000000000000000 Nil!24605))))

(declare-fun b!1120775 () Bool)

(declare-fun res!748808 () Bool)

(assert (=> b!1120775 (=> (not res!748808) (not e!638211))))

(assert (=> b!1120775 (= res!748808 (= (select (arr!35176 _keys!1208) i!673) k0!934))))

(declare-fun b!1120776 () Bool)

(assert (=> b!1120776 (= e!638211 e!638218)))

(declare-fun res!748812 () Bool)

(assert (=> b!1120776 (=> (not res!748812) (not e!638218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73054 (_ BitVec 32)) Bool)

(assert (=> b!1120776 (= res!748812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498118 mask!1564))))

(assert (=> b!1120776 (= lt!498118 (array!73055 (store (arr!35176 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35713 _keys!1208)))))

(declare-fun b!1120777 () Bool)

(declare-fun res!748818 () Bool)

(assert (=> b!1120777 (=> (not res!748818) (not e!638211))))

(assert (=> b!1120777 (= res!748818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120778 () Bool)

(declare-fun res!748811 () Bool)

(assert (=> b!1120778 (=> (not res!748811) (not e!638211))))

(assert (=> b!1120778 (= res!748811 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35713 _keys!1208))))))

(declare-fun b!1120779 () Bool)

(declare-fun e!638213 () Bool)

(assert (=> b!1120779 (= e!638218 (not e!638213))))

(declare-fun res!748817 () Bool)

(assert (=> b!1120779 (=> res!748817 e!638213)))

(assert (=> b!1120779 (= res!748817 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120779 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498120 () Unit!36697)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73054 (_ BitVec 64) (_ BitVec 32)) Unit!36697)

(assert (=> b!1120779 (= lt!498120 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1120780 () Bool)

(assert (=> b!1120780 (= e!638215 tp_is_empty!28113)))

(declare-fun bm!47030 () Bool)

(assert (=> bm!47030 (= call!47033 (getCurrentListMapNoExtraKeys!4351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120781 () Bool)

(assert (=> b!1120781 (= e!638213 e!638216)))

(declare-fun res!748810 () Bool)

(assert (=> b!1120781 (=> res!748810 e!638216)))

(assert (=> b!1120781 (= res!748810 (not (= from!1455 i!673)))))

(declare-fun lt!498115 () ListLongMap!15749)

(assert (=> b!1120781 (= lt!498115 (getCurrentListMapNoExtraKeys!4351 lt!498118 lt!498116 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2452 (Int (_ BitVec 64)) V!42611)

(assert (=> b!1120781 (= lt!498116 (array!73053 (store (arr!35175 _values!996) i!673 (ValueCellFull!13347 (dynLambda!2452 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35712 _values!996)))))

(declare-fun lt!498117 () ListLongMap!15749)

(assert (=> b!1120781 (= lt!498117 (getCurrentListMapNoExtraKeys!4351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120782 () Bool)

(assert (=> b!1120782 (= e!638214 (= call!47032 call!47033))))

(assert (= (and start!97918 res!748814) b!1120768))

(assert (= (and b!1120768 res!748807) b!1120767))

(assert (= (and b!1120767 res!748815) b!1120777))

(assert (= (and b!1120777 res!748818) b!1120771))

(assert (= (and b!1120771 res!748809) b!1120778))

(assert (= (and b!1120778 res!748811) b!1120770))

(assert (= (and b!1120770 res!748813) b!1120775))

(assert (= (and b!1120775 res!748808) b!1120776))

(assert (= (and b!1120776 res!748812) b!1120774))

(assert (= (and b!1120774 res!748816) b!1120779))

(assert (= (and b!1120779 (not res!748817)) b!1120781))

(assert (= (and b!1120781 (not res!748810)) b!1120772))

(assert (= (and b!1120772 c!109325) b!1120773))

(assert (= (and b!1120772 (not c!109325)) b!1120782))

(assert (= (or b!1120773 b!1120782) bm!47029))

(assert (= (or b!1120773 b!1120782) bm!47030))

(assert (= (and b!1120766 condMapEmpty!43987) mapIsEmpty!43987))

(assert (= (and b!1120766 (not condMapEmpty!43987)) mapNonEmpty!43987))

(get-info :version)

(assert (= (and mapNonEmpty!43987 ((_ is ValueCellFull!13347) mapValue!43987)) b!1120780))

(assert (= (and b!1120766 ((_ is ValueCellFull!13347) mapDefault!43987)) b!1120769))

(assert (= start!97918 b!1120766))

(declare-fun b_lambda!18587 () Bool)

(assert (=> (not b_lambda!18587) (not b!1120781)))

(declare-fun t!35188 () Bool)

(declare-fun tb!8403 () Bool)

(assert (=> (and start!97918 (= defaultEntry!1004 defaultEntry!1004) t!35188) tb!8403))

(declare-fun result!17359 () Bool)

(assert (=> tb!8403 (= result!17359 tp_is_empty!28113)))

(assert (=> b!1120781 t!35188))

(declare-fun b_and!37973 () Bool)

(assert (= b_and!37971 (and (=> t!35188 result!17359) b_and!37973)))

(declare-fun m!1035853 () Bool)

(assert (=> bm!47030 m!1035853))

(declare-fun m!1035855 () Bool)

(assert (=> b!1120775 m!1035855))

(declare-fun m!1035857 () Bool)

(assert (=> b!1120770 m!1035857))

(declare-fun m!1035859 () Bool)

(assert (=> b!1120771 m!1035859))

(declare-fun m!1035861 () Bool)

(assert (=> b!1120772 m!1035861))

(declare-fun m!1035863 () Bool)

(assert (=> b!1120777 m!1035863))

(declare-fun m!1035865 () Bool)

(assert (=> start!97918 m!1035865))

(declare-fun m!1035867 () Bool)

(assert (=> start!97918 m!1035867))

(declare-fun m!1035869 () Bool)

(assert (=> b!1120776 m!1035869))

(declare-fun m!1035871 () Bool)

(assert (=> b!1120776 m!1035871))

(declare-fun m!1035873 () Bool)

(assert (=> b!1120773 m!1035873))

(declare-fun m!1035875 () Bool)

(assert (=> b!1120779 m!1035875))

(declare-fun m!1035877 () Bool)

(assert (=> b!1120779 m!1035877))

(declare-fun m!1035879 () Bool)

(assert (=> b!1120768 m!1035879))

(declare-fun m!1035881 () Bool)

(assert (=> b!1120774 m!1035881))

(declare-fun m!1035883 () Bool)

(assert (=> bm!47029 m!1035883))

(declare-fun m!1035885 () Bool)

(assert (=> b!1120781 m!1035885))

(declare-fun m!1035887 () Bool)

(assert (=> b!1120781 m!1035887))

(declare-fun m!1035889 () Bool)

(assert (=> b!1120781 m!1035889))

(declare-fun m!1035891 () Bool)

(assert (=> b!1120781 m!1035891))

(declare-fun m!1035893 () Bool)

(assert (=> mapNonEmpty!43987 m!1035893))

(check-sat (not start!97918) (not bm!47029) (not b!1120773) (not b_next!23583) (not b!1120779) (not b!1120772) (not b_lambda!18587) (not mapNonEmpty!43987) (not b!1120776) b_and!37973 (not b!1120774) (not b!1120781) (not b!1120770) tp_is_empty!28113 (not b!1120777) (not b!1120768) (not bm!47030) (not b!1120771))
(check-sat b_and!37973 (not b_next!23583))

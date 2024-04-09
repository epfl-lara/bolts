; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97966 () Bool)

(assert start!97966)

(declare-fun b_free!23631 () Bool)

(declare-fun b_next!23631 () Bool)

(assert (=> start!97966 (= b_free!23631 (not b_next!23631))))

(declare-fun tp!83597 () Bool)

(declare-fun b_and!38067 () Bool)

(assert (=> start!97966 (= tp!83597 b_and!38067)))

(declare-fun b!1122043 () Bool)

(declare-fun e!638864 () Bool)

(declare-fun tp_is_empty!28161 () Bool)

(assert (=> b!1122043 (= e!638864 tp_is_empty!28161)))

(declare-datatypes ((V!42675 0))(
  ( (V!42676 (val!14137 Int)) )
))
(declare-datatypes ((tuple2!17814 0))(
  ( (tuple2!17815 (_1!8917 (_ BitVec 64)) (_2!8917 V!42675)) )
))
(declare-datatypes ((List!24652 0))(
  ( (Nil!24649) (Cons!24648 (h!25857 tuple2!17814) (t!35282 List!24652)) )
))
(declare-datatypes ((ListLongMap!15795 0))(
  ( (ListLongMap!15796 (toList!7913 List!24652)) )
))
(declare-fun call!47177 () ListLongMap!15795)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13371 0))(
  ( (ValueCellFull!13371 (v!16771 V!42675)) (EmptyCell!13371) )
))
(declare-datatypes ((array!73148 0))(
  ( (array!73149 (arr!35223 (Array (_ BitVec 32) ValueCell!13371)) (size!35760 (_ BitVec 32))) )
))
(declare-fun lt!498553 () array!73148)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun zeroValue!944 () V!42675)

(declare-datatypes ((array!73150 0))(
  ( (array!73151 (arr!35224 (Array (_ BitVec 32) (_ BitVec 64))) (size!35761 (_ BitVec 32))) )
))
(declare-fun lt!498556 () array!73150)

(declare-fun bm!47173 () Bool)

(declare-fun minValue!944 () V!42675)

(declare-fun getCurrentListMapNoExtraKeys!4374 (array!73150 array!73148 (_ BitVec 32) (_ BitVec 32) V!42675 V!42675 (_ BitVec 32) Int) ListLongMap!15795)

(assert (=> bm!47173 (= call!47177 (getCurrentListMapNoExtraKeys!4374 lt!498556 lt!498553 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47176 () ListLongMap!15795)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!638865 () Bool)

(declare-fun b!1122044 () Bool)

(declare-fun -!1076 (ListLongMap!15795 (_ BitVec 64)) ListLongMap!15795)

(assert (=> b!1122044 (= e!638865 (= call!47177 (-!1076 call!47176 k0!934)))))

(declare-fun b!1122045 () Bool)

(declare-fun e!638869 () Bool)

(declare-fun e!638871 () Bool)

(assert (=> b!1122045 (= e!638869 e!638871)))

(declare-fun res!749687 () Bool)

(assert (=> b!1122045 (=> res!749687 e!638871)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122045 (= res!749687 (not (= from!1455 i!673)))))

(declare-fun lt!498552 () ListLongMap!15795)

(assert (=> b!1122045 (= lt!498552 (getCurrentListMapNoExtraKeys!4374 lt!498556 lt!498553 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73148)

(declare-fun dynLambda!2472 (Int (_ BitVec 64)) V!42675)

(assert (=> b!1122045 (= lt!498553 (array!73149 (store (arr!35223 _values!996) i!673 (ValueCellFull!13371 (dynLambda!2472 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35760 _values!996)))))

(declare-fun _keys!1208 () array!73150)

(declare-fun lt!498558 () ListLongMap!15795)

(assert (=> b!1122045 (= lt!498558 (getCurrentListMapNoExtraKeys!4374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122046 () Bool)

(declare-fun res!749679 () Bool)

(declare-fun e!638870 () Bool)

(assert (=> b!1122046 (=> (not res!749679) (not e!638870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122046 (= res!749679 (validMask!0 mask!1564))))

(declare-fun b!1122047 () Bool)

(declare-fun res!749678 () Bool)

(declare-fun e!638873 () Bool)

(assert (=> b!1122047 (=> (not res!749678) (not e!638873))))

(declare-datatypes ((List!24653 0))(
  ( (Nil!24650) (Cons!24649 (h!25858 (_ BitVec 64)) (t!35283 List!24653)) )
))
(declare-fun arrayNoDuplicates!0 (array!73150 (_ BitVec 32) List!24653) Bool)

(assert (=> b!1122047 (= res!749678 (arrayNoDuplicates!0 lt!498556 #b00000000000000000000000000000000 Nil!24650))))

(declare-fun b!1122048 () Bool)

(declare-fun e!638868 () Bool)

(assert (=> b!1122048 (= e!638868 tp_is_empty!28161)))

(declare-fun b!1122049 () Bool)

(declare-fun res!749683 () Bool)

(assert (=> b!1122049 (=> (not res!749683) (not e!638870))))

(assert (=> b!1122049 (= res!749683 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35761 _keys!1208))))))

(declare-fun mapNonEmpty!44059 () Bool)

(declare-fun mapRes!44059 () Bool)

(declare-fun tp!83598 () Bool)

(assert (=> mapNonEmpty!44059 (= mapRes!44059 (and tp!83598 e!638868))))

(declare-fun mapKey!44059 () (_ BitVec 32))

(declare-fun mapValue!44059 () ValueCell!13371)

(declare-fun mapRest!44059 () (Array (_ BitVec 32) ValueCell!13371))

(assert (=> mapNonEmpty!44059 (= (arr!35223 _values!996) (store mapRest!44059 mapKey!44059 mapValue!44059))))

(declare-fun b!1122050 () Bool)

(assert (=> b!1122050 (= e!638873 (not e!638869))))

(declare-fun res!749681 () Bool)

(assert (=> b!1122050 (=> res!749681 e!638869)))

(assert (=> b!1122050 (= res!749681 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122050 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36737 0))(
  ( (Unit!36738) )
))
(declare-fun lt!498557 () Unit!36737)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73150 (_ BitVec 64) (_ BitVec 32)) Unit!36737)

(assert (=> b!1122050 (= lt!498557 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1122051 () Bool)

(declare-fun res!749682 () Bool)

(assert (=> b!1122051 (=> (not res!749682) (not e!638870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122051 (= res!749682 (validKeyInArray!0 k0!934))))

(declare-fun res!749686 () Bool)

(assert (=> start!97966 (=> (not res!749686) (not e!638870))))

(assert (=> start!97966 (= res!749686 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35761 _keys!1208))))))

(assert (=> start!97966 e!638870))

(assert (=> start!97966 tp_is_empty!28161))

(declare-fun array_inv!26922 (array!73150) Bool)

(assert (=> start!97966 (array_inv!26922 _keys!1208)))

(assert (=> start!97966 true))

(assert (=> start!97966 tp!83597))

(declare-fun e!638866 () Bool)

(declare-fun array_inv!26923 (array!73148) Bool)

(assert (=> start!97966 (and (array_inv!26923 _values!996) e!638866)))

(declare-fun b!1122052 () Bool)

(assert (=> b!1122052 (= e!638865 (= call!47177 call!47176))))

(declare-fun b!1122053 () Bool)

(declare-fun e!638872 () Bool)

(assert (=> b!1122053 (= e!638871 e!638872)))

(declare-fun res!749684 () Bool)

(assert (=> b!1122053 (=> res!749684 e!638872)))

(assert (=> b!1122053 (= res!749684 (not (= (select (arr!35224 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1122053 e!638865))

(declare-fun c!109397 () Bool)

(assert (=> b!1122053 (= c!109397 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498554 () Unit!36737)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!329 (array!73150 array!73148 (_ BitVec 32) (_ BitVec 32) V!42675 V!42675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36737)

(assert (=> b!1122053 (= lt!498554 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!329 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122054 () Bool)

(declare-fun res!749677 () Bool)

(assert (=> b!1122054 (=> (not res!749677) (not e!638870))))

(assert (=> b!1122054 (= res!749677 (and (= (size!35760 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35761 _keys!1208) (size!35760 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122055 () Bool)

(declare-fun res!749685 () Bool)

(assert (=> b!1122055 (=> (not res!749685) (not e!638870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73150 (_ BitVec 32)) Bool)

(assert (=> b!1122055 (= res!749685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44059 () Bool)

(assert (=> mapIsEmpty!44059 mapRes!44059))

(declare-fun b!1122056 () Bool)

(assert (=> b!1122056 (= e!638866 (and e!638864 mapRes!44059))))

(declare-fun condMapEmpty!44059 () Bool)

(declare-fun mapDefault!44059 () ValueCell!13371)

(assert (=> b!1122056 (= condMapEmpty!44059 (= (arr!35223 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13371)) mapDefault!44059)))))

(declare-fun bm!47174 () Bool)

(assert (=> bm!47174 (= call!47176 (getCurrentListMapNoExtraKeys!4374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122057 () Bool)

(assert (=> b!1122057 (= e!638870 e!638873)))

(declare-fun res!749676 () Bool)

(assert (=> b!1122057 (=> (not res!749676) (not e!638873))))

(assert (=> b!1122057 (= res!749676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498556 mask!1564))))

(assert (=> b!1122057 (= lt!498556 (array!73151 (store (arr!35224 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35761 _keys!1208)))))

(declare-fun b!1122058 () Bool)

(declare-fun res!749680 () Bool)

(assert (=> b!1122058 (=> (not res!749680) (not e!638870))))

(assert (=> b!1122058 (= res!749680 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24650))))

(declare-fun b!1122059 () Bool)

(assert (=> b!1122059 (= e!638872 true)))

(declare-fun lt!498555 () Bool)

(declare-fun contains!6434 (ListLongMap!15795 (_ BitVec 64)) Bool)

(assert (=> b!1122059 (= lt!498555 (contains!6434 (getCurrentListMapNoExtraKeys!4374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1122060 () Bool)

(declare-fun res!749688 () Bool)

(assert (=> b!1122060 (=> (not res!749688) (not e!638870))))

(assert (=> b!1122060 (= res!749688 (= (select (arr!35224 _keys!1208) i!673) k0!934))))

(assert (= (and start!97966 res!749686) b!1122046))

(assert (= (and b!1122046 res!749679) b!1122054))

(assert (= (and b!1122054 res!749677) b!1122055))

(assert (= (and b!1122055 res!749685) b!1122058))

(assert (= (and b!1122058 res!749680) b!1122049))

(assert (= (and b!1122049 res!749683) b!1122051))

(assert (= (and b!1122051 res!749682) b!1122060))

(assert (= (and b!1122060 res!749688) b!1122057))

(assert (= (and b!1122057 res!749676) b!1122047))

(assert (= (and b!1122047 res!749678) b!1122050))

(assert (= (and b!1122050 (not res!749681)) b!1122045))

(assert (= (and b!1122045 (not res!749687)) b!1122053))

(assert (= (and b!1122053 c!109397) b!1122044))

(assert (= (and b!1122053 (not c!109397)) b!1122052))

(assert (= (or b!1122044 b!1122052) bm!47173))

(assert (= (or b!1122044 b!1122052) bm!47174))

(assert (= (and b!1122053 (not res!749684)) b!1122059))

(assert (= (and b!1122056 condMapEmpty!44059) mapIsEmpty!44059))

(assert (= (and b!1122056 (not condMapEmpty!44059)) mapNonEmpty!44059))

(get-info :version)

(assert (= (and mapNonEmpty!44059 ((_ is ValueCellFull!13371) mapValue!44059)) b!1122048))

(assert (= (and b!1122056 ((_ is ValueCellFull!13371) mapDefault!44059)) b!1122043))

(assert (= start!97966 b!1122056))

(declare-fun b_lambda!18635 () Bool)

(assert (=> (not b_lambda!18635) (not b!1122045)))

(declare-fun t!35281 () Bool)

(declare-fun tb!8451 () Bool)

(assert (=> (and start!97966 (= defaultEntry!1004 defaultEntry!1004) t!35281) tb!8451))

(declare-fun result!17455 () Bool)

(assert (=> tb!8451 (= result!17455 tp_is_empty!28161)))

(assert (=> b!1122045 t!35281))

(declare-fun b_and!38069 () Bool)

(assert (= b_and!38067 (and (=> t!35281 result!17455) b_and!38069)))

(declare-fun m!1036873 () Bool)

(assert (=> b!1122059 m!1036873))

(assert (=> b!1122059 m!1036873))

(declare-fun m!1036875 () Bool)

(assert (=> b!1122059 m!1036875))

(declare-fun m!1036877 () Bool)

(assert (=> start!97966 m!1036877))

(declare-fun m!1036879 () Bool)

(assert (=> start!97966 m!1036879))

(declare-fun m!1036881 () Bool)

(assert (=> b!1122045 m!1036881))

(declare-fun m!1036883 () Bool)

(assert (=> b!1122045 m!1036883))

(declare-fun m!1036885 () Bool)

(assert (=> b!1122045 m!1036885))

(declare-fun m!1036887 () Bool)

(assert (=> b!1122045 m!1036887))

(declare-fun m!1036889 () Bool)

(assert (=> b!1122057 m!1036889))

(declare-fun m!1036891 () Bool)

(assert (=> b!1122057 m!1036891))

(declare-fun m!1036893 () Bool)

(assert (=> b!1122053 m!1036893))

(declare-fun m!1036895 () Bool)

(assert (=> b!1122053 m!1036895))

(assert (=> bm!47174 m!1036873))

(declare-fun m!1036897 () Bool)

(assert (=> bm!47173 m!1036897))

(declare-fun m!1036899 () Bool)

(assert (=> b!1122047 m!1036899))

(declare-fun m!1036901 () Bool)

(assert (=> b!1122055 m!1036901))

(declare-fun m!1036903 () Bool)

(assert (=> b!1122044 m!1036903))

(declare-fun m!1036905 () Bool)

(assert (=> mapNonEmpty!44059 m!1036905))

(declare-fun m!1036907 () Bool)

(assert (=> b!1122051 m!1036907))

(declare-fun m!1036909 () Bool)

(assert (=> b!1122060 m!1036909))

(declare-fun m!1036911 () Bool)

(assert (=> b!1122050 m!1036911))

(declare-fun m!1036913 () Bool)

(assert (=> b!1122050 m!1036913))

(declare-fun m!1036915 () Bool)

(assert (=> b!1122058 m!1036915))

(declare-fun m!1036917 () Bool)

(assert (=> b!1122046 m!1036917))

(check-sat (not b!1122058) (not b!1122047) (not b!1122046) (not bm!47173) (not mapNonEmpty!44059) (not b!1122051) (not b!1122050) (not b!1122055) (not b!1122059) (not b_lambda!18635) (not bm!47174) (not b!1122045) (not start!97966) b_and!38069 (not b!1122057) (not b!1122053) (not b!1122044) tp_is_empty!28161 (not b_next!23631))
(check-sat b_and!38069 (not b_next!23631))

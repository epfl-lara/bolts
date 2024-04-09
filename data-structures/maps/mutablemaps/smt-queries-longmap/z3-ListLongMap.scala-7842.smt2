; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97834 () Bool)

(assert start!97834)

(declare-fun b_free!23499 () Bool)

(declare-fun b_next!23499 () Bool)

(assert (=> start!97834 (= b_free!23499 (not b_next!23499))))

(declare-fun tp!83201 () Bool)

(declare-fun b_and!37803 () Bool)

(assert (=> start!97834 (= tp!83201 b_and!37803)))

(declare-fun b!1118876 () Bool)

(declare-fun res!747413 () Bool)

(declare-fun e!637306 () Bool)

(assert (=> b!1118876 (=> (not res!747413) (not e!637306))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42499 0))(
  ( (V!42500 (val!14071 Int)) )
))
(declare-datatypes ((ValueCell!13305 0))(
  ( (ValueCellFull!13305 (v!16705 V!42499)) (EmptyCell!13305) )
))
(declare-datatypes ((array!72886 0))(
  ( (array!72887 (arr!35092 (Array (_ BitVec 32) ValueCell!13305)) (size!35629 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72886)

(declare-datatypes ((array!72888 0))(
  ( (array!72889 (arr!35093 (Array (_ BitVec 32) (_ BitVec 64))) (size!35630 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72888)

(assert (=> b!1118876 (= res!747413 (and (= (size!35629 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35630 _keys!1208) (size!35629 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118877 () Bool)

(declare-fun res!747409 () Bool)

(declare-fun e!637305 () Bool)

(assert (=> b!1118877 (=> (not res!747409) (not e!637305))))

(declare-fun lt!497584 () array!72888)

(declare-datatypes ((List!24540 0))(
  ( (Nil!24537) (Cons!24536 (h!25745 (_ BitVec 64)) (t!35038 List!24540)) )
))
(declare-fun arrayNoDuplicates!0 (array!72888 (_ BitVec 32) List!24540) Bool)

(assert (=> b!1118877 (= res!747409 (arrayNoDuplicates!0 lt!497584 #b00000000000000000000000000000000 Nil!24537))))

(declare-fun b!1118878 () Bool)

(assert (=> b!1118878 (= e!637306 e!637305)))

(declare-fun res!747412 () Bool)

(assert (=> b!1118878 (=> (not res!747412) (not e!637305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72888 (_ BitVec 32)) Bool)

(assert (=> b!1118878 (= res!747412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497584 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118878 (= lt!497584 (array!72889 (store (arr!35093 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35630 _keys!1208)))))

(declare-fun b!1118879 () Bool)

(declare-fun res!747416 () Bool)

(assert (=> b!1118879 (=> (not res!747416) (not e!637306))))

(assert (=> b!1118879 (= res!747416 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35630 _keys!1208))))))

(declare-fun b!1118880 () Bool)

(declare-fun res!747411 () Bool)

(assert (=> b!1118880 (=> (not res!747411) (not e!637306))))

(assert (=> b!1118880 (= res!747411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118881 () Bool)

(declare-fun res!747408 () Bool)

(assert (=> b!1118881 (=> (not res!747408) (not e!637306))))

(assert (=> b!1118881 (= res!747408 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24537))))

(declare-fun mapIsEmpty!43861 () Bool)

(declare-fun mapRes!43861 () Bool)

(assert (=> mapIsEmpty!43861 mapRes!43861))

(declare-fun b!1118882 () Bool)

(declare-fun e!637301 () Bool)

(declare-fun e!637302 () Bool)

(assert (=> b!1118882 (= e!637301 (and e!637302 mapRes!43861))))

(declare-fun condMapEmpty!43861 () Bool)

(declare-fun mapDefault!43861 () ValueCell!13305)

(assert (=> b!1118882 (= condMapEmpty!43861 (= (arr!35092 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13305)) mapDefault!43861)))))

(declare-fun b!1118883 () Bool)

(declare-fun res!747414 () Bool)

(assert (=> b!1118883 (=> (not res!747414) (not e!637306))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1118883 (= res!747414 (= (select (arr!35093 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!43861 () Bool)

(declare-fun tp!83202 () Bool)

(declare-fun e!637304 () Bool)

(assert (=> mapNonEmpty!43861 (= mapRes!43861 (and tp!83202 e!637304))))

(declare-fun mapValue!43861 () ValueCell!13305)

(declare-fun mapKey!43861 () (_ BitVec 32))

(declare-fun mapRest!43861 () (Array (_ BitVec 32) ValueCell!13305))

(assert (=> mapNonEmpty!43861 (= (arr!35092 _values!996) (store mapRest!43861 mapKey!43861 mapValue!43861))))

(declare-fun res!747410 () Bool)

(assert (=> start!97834 (=> (not res!747410) (not e!637306))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97834 (= res!747410 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35630 _keys!1208))))))

(assert (=> start!97834 e!637306))

(declare-fun tp_is_empty!28029 () Bool)

(assert (=> start!97834 tp_is_empty!28029))

(declare-fun array_inv!26826 (array!72888) Bool)

(assert (=> start!97834 (array_inv!26826 _keys!1208)))

(assert (=> start!97834 true))

(assert (=> start!97834 tp!83201))

(declare-fun array_inv!26827 (array!72886) Bool)

(assert (=> start!97834 (and (array_inv!26827 _values!996) e!637301)))

(declare-fun b!1118884 () Bool)

(assert (=> b!1118884 (= e!637304 tp_is_empty!28029)))

(declare-fun b!1118885 () Bool)

(declare-fun e!637307 () Bool)

(assert (=> b!1118885 (= e!637305 (not e!637307))))

(declare-fun res!747417 () Bool)

(assert (=> b!1118885 (=> res!747417 e!637307)))

(assert (=> b!1118885 (= res!747417 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118885 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36627 0))(
  ( (Unit!36628) )
))
(declare-fun lt!497586 () Unit!36627)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72888 (_ BitVec 64) (_ BitVec 32)) Unit!36627)

(assert (=> b!1118885 (= lt!497586 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118886 () Bool)

(declare-fun res!747415 () Bool)

(assert (=> b!1118886 (=> (not res!747415) (not e!637306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118886 (= res!747415 (validKeyInArray!0 k0!934))))

(declare-fun b!1118887 () Bool)

(declare-fun res!747407 () Bool)

(assert (=> b!1118887 (=> (not res!747407) (not e!637306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118887 (= res!747407 (validMask!0 mask!1564))))

(declare-fun b!1118888 () Bool)

(assert (=> b!1118888 (= e!637307 true)))

(declare-fun zeroValue!944 () V!42499)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42499)

(declare-datatypes ((tuple2!17702 0))(
  ( (tuple2!17703 (_1!8861 (_ BitVec 64)) (_2!8861 V!42499)) )
))
(declare-datatypes ((List!24541 0))(
  ( (Nil!24538) (Cons!24537 (h!25746 tuple2!17702) (t!35039 List!24541)) )
))
(declare-datatypes ((ListLongMap!15683 0))(
  ( (ListLongMap!15684 (toList!7857 List!24541)) )
))
(declare-fun lt!497585 () ListLongMap!15683)

(declare-fun getCurrentListMapNoExtraKeys!4318 (array!72888 array!72886 (_ BitVec 32) (_ BitVec 32) V!42499 V!42499 (_ BitVec 32) Int) ListLongMap!15683)

(declare-fun dynLambda!2420 (Int (_ BitVec 64)) V!42499)

(assert (=> b!1118888 (= lt!497585 (getCurrentListMapNoExtraKeys!4318 lt!497584 (array!72887 (store (arr!35092 _values!996) i!673 (ValueCellFull!13305 (dynLambda!2420 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35629 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497583 () ListLongMap!15683)

(assert (=> b!1118888 (= lt!497583 (getCurrentListMapNoExtraKeys!4318 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118889 () Bool)

(assert (=> b!1118889 (= e!637302 tp_is_empty!28029)))

(assert (= (and start!97834 res!747410) b!1118887))

(assert (= (and b!1118887 res!747407) b!1118876))

(assert (= (and b!1118876 res!747413) b!1118880))

(assert (= (and b!1118880 res!747411) b!1118881))

(assert (= (and b!1118881 res!747408) b!1118879))

(assert (= (and b!1118879 res!747416) b!1118886))

(assert (= (and b!1118886 res!747415) b!1118883))

(assert (= (and b!1118883 res!747414) b!1118878))

(assert (= (and b!1118878 res!747412) b!1118877))

(assert (= (and b!1118877 res!747409) b!1118885))

(assert (= (and b!1118885 (not res!747417)) b!1118888))

(assert (= (and b!1118882 condMapEmpty!43861) mapIsEmpty!43861))

(assert (= (and b!1118882 (not condMapEmpty!43861)) mapNonEmpty!43861))

(get-info :version)

(assert (= (and mapNonEmpty!43861 ((_ is ValueCellFull!13305) mapValue!43861)) b!1118884))

(assert (= (and b!1118882 ((_ is ValueCellFull!13305) mapDefault!43861)) b!1118889))

(assert (= start!97834 b!1118882))

(declare-fun b_lambda!18503 () Bool)

(assert (=> (not b_lambda!18503) (not b!1118888)))

(declare-fun t!35037 () Bool)

(declare-fun tb!8319 () Bool)

(assert (=> (and start!97834 (= defaultEntry!1004 defaultEntry!1004) t!35037) tb!8319))

(declare-fun result!17191 () Bool)

(assert (=> tb!8319 (= result!17191 tp_is_empty!28029)))

(assert (=> b!1118888 t!35037))

(declare-fun b_and!37805 () Bool)

(assert (= b_and!37803 (and (=> t!35037 result!17191) b_and!37805)))

(declare-fun m!1034393 () Bool)

(assert (=> b!1118877 m!1034393))

(declare-fun m!1034395 () Bool)

(assert (=> b!1118888 m!1034395))

(declare-fun m!1034397 () Bool)

(assert (=> b!1118888 m!1034397))

(declare-fun m!1034399 () Bool)

(assert (=> b!1118888 m!1034399))

(declare-fun m!1034401 () Bool)

(assert (=> b!1118888 m!1034401))

(declare-fun m!1034403 () Bool)

(assert (=> b!1118878 m!1034403))

(declare-fun m!1034405 () Bool)

(assert (=> b!1118878 m!1034405))

(declare-fun m!1034407 () Bool)

(assert (=> b!1118880 m!1034407))

(declare-fun m!1034409 () Bool)

(assert (=> mapNonEmpty!43861 m!1034409))

(declare-fun m!1034411 () Bool)

(assert (=> b!1118885 m!1034411))

(declare-fun m!1034413 () Bool)

(assert (=> b!1118885 m!1034413))

(declare-fun m!1034415 () Bool)

(assert (=> b!1118887 m!1034415))

(declare-fun m!1034417 () Bool)

(assert (=> start!97834 m!1034417))

(declare-fun m!1034419 () Bool)

(assert (=> start!97834 m!1034419))

(declare-fun m!1034421 () Bool)

(assert (=> b!1118883 m!1034421))

(declare-fun m!1034423 () Bool)

(assert (=> b!1118886 m!1034423))

(declare-fun m!1034425 () Bool)

(assert (=> b!1118881 m!1034425))

(check-sat (not b!1118887) (not b!1118878) (not b!1118886) (not b!1118888) (not start!97834) (not b!1118880) (not b_lambda!18503) (not b!1118881) tp_is_empty!28029 (not mapNonEmpty!43861) (not b_next!23499) (not b!1118877) b_and!37805 (not b!1118885))
(check-sat b_and!37805 (not b_next!23499))

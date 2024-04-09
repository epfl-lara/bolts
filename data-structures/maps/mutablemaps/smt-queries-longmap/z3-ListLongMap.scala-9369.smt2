; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111688 () Bool)

(assert start!111688)

(declare-fun b_free!30309 () Bool)

(declare-fun b_next!30309 () Bool)

(assert (=> start!111688 (= b_free!30309 (not b_next!30309))))

(declare-fun tp!106404 () Bool)

(declare-fun b_and!48787 () Bool)

(assert (=> start!111688 (= tp!106404 b_and!48787)))

(declare-fun b!1322524 () Bool)

(declare-fun res!877908 () Bool)

(declare-fun e!754128 () Bool)

(assert (=> b!1322524 (=> (not res!877908) (not e!754128))))

(declare-datatypes ((array!89137 0))(
  ( (array!89138 (arr!43038 (Array (_ BitVec 32) (_ BitVec 64))) (size!43589 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89137)

(declare-datatypes ((List!30708 0))(
  ( (Nil!30705) (Cons!30704 (h!31913 (_ BitVec 64)) (t!44573 List!30708)) )
))
(declare-fun arrayNoDuplicates!0 (array!89137 (_ BitVec 32) List!30708) Bool)

(assert (=> b!1322524 (= res!877908 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30705))))

(declare-fun mapIsEmpty!55841 () Bool)

(declare-fun mapRes!55841 () Bool)

(assert (=> mapIsEmpty!55841 mapRes!55841))

(declare-fun b!1322525 () Bool)

(declare-fun res!877909 () Bool)

(assert (=> b!1322525 (=> (not res!877909) (not e!754128))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53275 0))(
  ( (V!53276 (val!18139 Int)) )
))
(declare-fun zeroValue!1279 () V!53275)

(declare-fun minValue!1279 () V!53275)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((ValueCell!17166 0))(
  ( (ValueCellFull!17166 (v!20767 V!53275)) (EmptyCell!17166) )
))
(declare-datatypes ((array!89139 0))(
  ( (array!89140 (arr!43039 (Array (_ BitVec 32) ValueCell!17166)) (size!43590 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89139)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23534 0))(
  ( (tuple2!23535 (_1!11777 (_ BitVec 64)) (_2!11777 V!53275)) )
))
(declare-datatypes ((List!30709 0))(
  ( (Nil!30706) (Cons!30705 (h!31914 tuple2!23534) (t!44574 List!30709)) )
))
(declare-datatypes ((ListLongMap!21203 0))(
  ( (ListLongMap!21204 (toList!10617 List!30709)) )
))
(declare-fun contains!8708 (ListLongMap!21203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5557 (array!89137 array!89139 (_ BitVec 32) (_ BitVec 32) V!53275 V!53275 (_ BitVec 32) Int) ListLongMap!21203)

(assert (=> b!1322525 (= res!877909 (contains!8708 (getCurrentListMap!5557 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1322526 () Bool)

(declare-fun e!754130 () Bool)

(declare-fun e!754131 () Bool)

(assert (=> b!1322526 (= e!754130 (and e!754131 mapRes!55841))))

(declare-fun condMapEmpty!55841 () Bool)

(declare-fun mapDefault!55841 () ValueCell!17166)

(assert (=> b!1322526 (= condMapEmpty!55841 (= (arr!43039 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17166)) mapDefault!55841)))))

(declare-fun res!877911 () Bool)

(assert (=> start!111688 (=> (not res!877911) (not e!754128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111688 (= res!877911 (validMask!0 mask!2019))))

(assert (=> start!111688 e!754128))

(declare-fun array_inv!32447 (array!89137) Bool)

(assert (=> start!111688 (array_inv!32447 _keys!1609)))

(assert (=> start!111688 true))

(declare-fun tp_is_empty!36129 () Bool)

(assert (=> start!111688 tp_is_empty!36129))

(declare-fun array_inv!32448 (array!89139) Bool)

(assert (=> start!111688 (and (array_inv!32448 _values!1337) e!754130)))

(assert (=> start!111688 tp!106404))

(declare-fun b!1322527 () Bool)

(declare-fun e!754132 () Bool)

(assert (=> b!1322527 (= e!754132 tp_is_empty!36129)))

(declare-fun b!1322528 () Bool)

(assert (=> b!1322528 (= e!754128 (not true))))

(declare-fun lt!588245 () ListLongMap!21203)

(declare-fun lt!588246 () tuple2!23534)

(declare-fun +!4566 (ListLongMap!21203 tuple2!23534) ListLongMap!21203)

(assert (=> b!1322528 (contains!8708 (+!4566 lt!588245 lt!588246) k0!1164)))

(declare-datatypes ((Unit!43532 0))(
  ( (Unit!43533) )
))
(declare-fun lt!588247 () Unit!43532)

(declare-fun addStillContains!1147 (ListLongMap!21203 (_ BitVec 64) V!53275 (_ BitVec 64)) Unit!43532)

(assert (=> b!1322528 (= lt!588247 (addStillContains!1147 lt!588245 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322528 (contains!8708 lt!588245 k0!1164)))

(declare-fun lt!588249 () Unit!43532)

(declare-fun lt!588248 () V!53275)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!181 ((_ BitVec 64) (_ BitVec 64) V!53275 ListLongMap!21203) Unit!43532)

(assert (=> b!1322528 (= lt!588249 (lemmaInListMapAfterAddingDiffThenInBefore!181 k0!1164 (select (arr!43038 _keys!1609) from!2000) lt!588248 lt!588245))))

(declare-fun lt!588242 () ListLongMap!21203)

(assert (=> b!1322528 (contains!8708 lt!588242 k0!1164)))

(declare-fun lt!588250 () Unit!43532)

(assert (=> b!1322528 (= lt!588250 (lemmaInListMapAfterAddingDiffThenInBefore!181 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588242))))

(declare-fun lt!588244 () ListLongMap!21203)

(assert (=> b!1322528 (contains!8708 lt!588244 k0!1164)))

(declare-fun lt!588243 () Unit!43532)

(assert (=> b!1322528 (= lt!588243 (lemmaInListMapAfterAddingDiffThenInBefore!181 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588244))))

(assert (=> b!1322528 (= lt!588244 (+!4566 lt!588242 lt!588246))))

(assert (=> b!1322528 (= lt!588246 (tuple2!23535 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322528 (= lt!588242 (+!4566 lt!588245 (tuple2!23535 (select (arr!43038 _keys!1609) from!2000) lt!588248)))))

(declare-fun get!21716 (ValueCell!17166 V!53275) V!53275)

(declare-fun dynLambda!3603 (Int (_ BitVec 64)) V!53275)

(assert (=> b!1322528 (= lt!588248 (get!21716 (select (arr!43039 _values!1337) from!2000) (dynLambda!3603 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6281 (array!89137 array!89139 (_ BitVec 32) (_ BitVec 32) V!53275 V!53275 (_ BitVec 32) Int) ListLongMap!21203)

(assert (=> b!1322528 (= lt!588245 (getCurrentListMapNoExtraKeys!6281 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322529 () Bool)

(declare-fun res!877905 () Bool)

(assert (=> b!1322529 (=> (not res!877905) (not e!754128))))

(assert (=> b!1322529 (= res!877905 (not (= (select (arr!43038 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1322530 () Bool)

(declare-fun res!877907 () Bool)

(assert (=> b!1322530 (=> (not res!877907) (not e!754128))))

(assert (=> b!1322530 (= res!877907 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43589 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322531 () Bool)

(declare-fun res!877906 () Bool)

(assert (=> b!1322531 (=> (not res!877906) (not e!754128))))

(assert (=> b!1322531 (= res!877906 (and (= (size!43590 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43589 _keys!1609) (size!43590 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322532 () Bool)

(declare-fun res!877912 () Bool)

(assert (=> b!1322532 (=> (not res!877912) (not e!754128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89137 (_ BitVec 32)) Bool)

(assert (=> b!1322532 (= res!877912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322533 () Bool)

(assert (=> b!1322533 (= e!754131 tp_is_empty!36129)))

(declare-fun mapNonEmpty!55841 () Bool)

(declare-fun tp!106403 () Bool)

(assert (=> mapNonEmpty!55841 (= mapRes!55841 (and tp!106403 e!754132))))

(declare-fun mapKey!55841 () (_ BitVec 32))

(declare-fun mapRest!55841 () (Array (_ BitVec 32) ValueCell!17166))

(declare-fun mapValue!55841 () ValueCell!17166)

(assert (=> mapNonEmpty!55841 (= (arr!43039 _values!1337) (store mapRest!55841 mapKey!55841 mapValue!55841))))

(declare-fun b!1322534 () Bool)

(declare-fun res!877910 () Bool)

(assert (=> b!1322534 (=> (not res!877910) (not e!754128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322534 (= res!877910 (validKeyInArray!0 (select (arr!43038 _keys!1609) from!2000)))))

(assert (= (and start!111688 res!877911) b!1322531))

(assert (= (and b!1322531 res!877906) b!1322532))

(assert (= (and b!1322532 res!877912) b!1322524))

(assert (= (and b!1322524 res!877908) b!1322530))

(assert (= (and b!1322530 res!877907) b!1322525))

(assert (= (and b!1322525 res!877909) b!1322529))

(assert (= (and b!1322529 res!877905) b!1322534))

(assert (= (and b!1322534 res!877910) b!1322528))

(assert (= (and b!1322526 condMapEmpty!55841) mapIsEmpty!55841))

(assert (= (and b!1322526 (not condMapEmpty!55841)) mapNonEmpty!55841))

(get-info :version)

(assert (= (and mapNonEmpty!55841 ((_ is ValueCellFull!17166) mapValue!55841)) b!1322527))

(assert (= (and b!1322526 ((_ is ValueCellFull!17166) mapDefault!55841)) b!1322533))

(assert (= start!111688 b!1322526))

(declare-fun b_lambda!23645 () Bool)

(assert (=> (not b_lambda!23645) (not b!1322528)))

(declare-fun t!44572 () Bool)

(declare-fun tb!11669 () Bool)

(assert (=> (and start!111688 (= defaultEntry!1340 defaultEntry!1340) t!44572) tb!11669))

(declare-fun result!24385 () Bool)

(assert (=> tb!11669 (= result!24385 tp_is_empty!36129)))

(assert (=> b!1322528 t!44572))

(declare-fun b_and!48789 () Bool)

(assert (= b_and!48787 (and (=> t!44572 result!24385) b_and!48789)))

(declare-fun m!1210931 () Bool)

(assert (=> mapNonEmpty!55841 m!1210931))

(declare-fun m!1210933 () Bool)

(assert (=> b!1322532 m!1210933))

(declare-fun m!1210935 () Bool)

(assert (=> b!1322528 m!1210935))

(declare-fun m!1210937 () Bool)

(assert (=> b!1322528 m!1210937))

(declare-fun m!1210939 () Bool)

(assert (=> b!1322528 m!1210939))

(declare-fun m!1210941 () Bool)

(assert (=> b!1322528 m!1210941))

(declare-fun m!1210943 () Bool)

(assert (=> b!1322528 m!1210943))

(declare-fun m!1210945 () Bool)

(assert (=> b!1322528 m!1210945))

(declare-fun m!1210947 () Bool)

(assert (=> b!1322528 m!1210947))

(declare-fun m!1210949 () Bool)

(assert (=> b!1322528 m!1210949))

(declare-fun m!1210951 () Bool)

(assert (=> b!1322528 m!1210951))

(declare-fun m!1210953 () Bool)

(assert (=> b!1322528 m!1210953))

(declare-fun m!1210955 () Bool)

(assert (=> b!1322528 m!1210955))

(declare-fun m!1210957 () Bool)

(assert (=> b!1322528 m!1210957))

(assert (=> b!1322528 m!1210955))

(declare-fun m!1210959 () Bool)

(assert (=> b!1322528 m!1210959))

(declare-fun m!1210961 () Bool)

(assert (=> b!1322528 m!1210961))

(assert (=> b!1322528 m!1210949))

(declare-fun m!1210963 () Bool)

(assert (=> b!1322528 m!1210963))

(assert (=> b!1322528 m!1210951))

(assert (=> b!1322528 m!1210941))

(declare-fun m!1210965 () Bool)

(assert (=> b!1322528 m!1210965))

(declare-fun m!1210967 () Bool)

(assert (=> start!111688 m!1210967))

(declare-fun m!1210969 () Bool)

(assert (=> start!111688 m!1210969))

(declare-fun m!1210971 () Bool)

(assert (=> start!111688 m!1210971))

(declare-fun m!1210973 () Bool)

(assert (=> b!1322525 m!1210973))

(assert (=> b!1322525 m!1210973))

(declare-fun m!1210975 () Bool)

(assert (=> b!1322525 m!1210975))

(declare-fun m!1210977 () Bool)

(assert (=> b!1322524 m!1210977))

(assert (=> b!1322529 m!1210955))

(assert (=> b!1322534 m!1210955))

(assert (=> b!1322534 m!1210955))

(declare-fun m!1210979 () Bool)

(assert (=> b!1322534 m!1210979))

(check-sat (not b_next!30309) tp_is_empty!36129 (not b!1322528) (not b!1322525) (not mapNonEmpty!55841) (not b!1322534) (not b_lambda!23645) (not start!111688) b_and!48789 (not b!1322532) (not b!1322524))
(check-sat b_and!48789 (not b_next!30309))

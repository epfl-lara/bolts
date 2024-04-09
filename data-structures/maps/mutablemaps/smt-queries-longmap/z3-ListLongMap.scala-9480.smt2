; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112526 () Bool)

(assert start!112526)

(declare-fun b_free!30885 () Bool)

(declare-fun b_next!30885 () Bool)

(assert (=> start!112526 (= b_free!30885 (not b_next!30885))))

(declare-fun tp!108292 () Bool)

(declare-fun b_and!49781 () Bool)

(assert (=> start!112526 (= tp!108292 b_and!49781)))

(declare-fun b!1334025 () Bool)

(declare-fun e!759860 () Bool)

(assert (=> b!1334025 (= e!759860 (not true))))

(declare-datatypes ((V!54163 0))(
  ( (V!54164 (val!18472 Int)) )
))
(declare-datatypes ((tuple2!23972 0))(
  ( (tuple2!23973 (_1!11996 (_ BitVec 64)) (_2!11996 V!54163)) )
))
(declare-datatypes ((List!31144 0))(
  ( (Nil!31141) (Cons!31140 (h!32349 tuple2!23972) (t!45395 List!31144)) )
))
(declare-datatypes ((ListLongMap!21641 0))(
  ( (ListLongMap!21642 (toList!10836 List!31144)) )
))
(declare-fun lt!592204 () ListLongMap!21641)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8936 (ListLongMap!21641 (_ BitVec 64)) Bool)

(assert (=> b!1334025 (contains!8936 lt!592204 k0!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90437 0))(
  ( (array!90438 (arr!43680 (Array (_ BitVec 32) (_ BitVec 64))) (size!44231 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90437)

(declare-datatypes ((Unit!43815 0))(
  ( (Unit!43816) )
))
(declare-fun lt!592205 () Unit!43815)

(declare-fun lt!592203 () V!54163)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!299 ((_ BitVec 64) (_ BitVec 64) V!54163 ListLongMap!21641) Unit!43815)

(assert (=> b!1334025 (= lt!592205 (lemmaInListMapAfterAddingDiffThenInBefore!299 k0!1153 (select (arr!43680 _keys!1590) from!1980) lt!592203 lt!592204))))

(declare-fun res!885436 () Bool)

(declare-fun e!759861 () Bool)

(assert (=> start!112526 (=> (not res!885436) (not e!759861))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112526 (= res!885436 (validMask!0 mask!1998))))

(assert (=> start!112526 e!759861))

(declare-datatypes ((ValueCell!17499 0))(
  ( (ValueCellFull!17499 (v!21107 V!54163)) (EmptyCell!17499) )
))
(declare-datatypes ((array!90439 0))(
  ( (array!90440 (arr!43681 (Array (_ BitVec 32) ValueCell!17499)) (size!44232 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90439)

(declare-fun e!759863 () Bool)

(declare-fun array_inv!32883 (array!90439) Bool)

(assert (=> start!112526 (and (array_inv!32883 _values!1320) e!759863)))

(assert (=> start!112526 true))

(declare-fun array_inv!32884 (array!90437) Bool)

(assert (=> start!112526 (array_inv!32884 _keys!1590)))

(assert (=> start!112526 tp!108292))

(declare-fun tp_is_empty!36795 () Bool)

(assert (=> start!112526 tp_is_empty!36795))

(declare-fun b!1334026 () Bool)

(declare-fun res!885430 () Bool)

(assert (=> b!1334026 (=> (not res!885430) (not e!759861))))

(declare-datatypes ((List!31145 0))(
  ( (Nil!31142) (Cons!31141 (h!32350 (_ BitVec 64)) (t!45396 List!31145)) )
))
(declare-fun arrayNoDuplicates!0 (array!90437 (_ BitVec 32) List!31145) Bool)

(assert (=> b!1334026 (= res!885430 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31142))))

(declare-fun b!1334027 () Bool)

(declare-fun e!759862 () Bool)

(declare-fun mapRes!56866 () Bool)

(assert (=> b!1334027 (= e!759863 (and e!759862 mapRes!56866))))

(declare-fun condMapEmpty!56866 () Bool)

(declare-fun mapDefault!56866 () ValueCell!17499)

(assert (=> b!1334027 (= condMapEmpty!56866 (= (arr!43681 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17499)) mapDefault!56866)))))

(declare-fun b!1334028 () Bool)

(assert (=> b!1334028 (= e!759862 tp_is_empty!36795)))

(declare-fun b!1334029 () Bool)

(declare-fun res!885428 () Bool)

(assert (=> b!1334029 (=> (not res!885428) (not e!759861))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334029 (= res!885428 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44231 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334030 () Bool)

(declare-fun e!759865 () Bool)

(assert (=> b!1334030 (= e!759865 tp_is_empty!36795)))

(declare-fun b!1334031 () Bool)

(declare-fun res!885433 () Bool)

(assert (=> b!1334031 (=> (not res!885433) (not e!759861))))

(declare-fun minValue!1262 () V!54163)

(declare-fun zeroValue!1262 () V!54163)

(declare-fun defaultEntry!1323 () Int)

(declare-fun getCurrentListMap!5751 (array!90437 array!90439 (_ BitVec 32) (_ BitVec 32) V!54163 V!54163 (_ BitVec 32) Int) ListLongMap!21641)

(assert (=> b!1334031 (= res!885433 (contains!8936 (getCurrentListMap!5751 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1334032 () Bool)

(declare-fun res!885434 () Bool)

(assert (=> b!1334032 (=> (not res!885434) (not e!759861))))

(assert (=> b!1334032 (= res!885434 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334033 () Bool)

(declare-fun res!885435 () Bool)

(assert (=> b!1334033 (=> (not res!885435) (not e!759861))))

(assert (=> b!1334033 (= res!885435 (not (= (select (arr!43680 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapIsEmpty!56866 () Bool)

(assert (=> mapIsEmpty!56866 mapRes!56866))

(declare-fun b!1334034 () Bool)

(assert (=> b!1334034 (= e!759861 e!759860)))

(declare-fun res!885431 () Bool)

(assert (=> b!1334034 (=> (not res!885431) (not e!759860))))

(declare-fun +!4697 (ListLongMap!21641 tuple2!23972) ListLongMap!21641)

(assert (=> b!1334034 (= res!885431 (contains!8936 (+!4697 lt!592204 (tuple2!23973 (select (arr!43680 _keys!1590) from!1980) lt!592203)) k0!1153))))

(declare-fun getCurrentListMapNoExtraKeys!6415 (array!90437 array!90439 (_ BitVec 32) (_ BitVec 32) V!54163 V!54163 (_ BitVec 32) Int) ListLongMap!21641)

(assert (=> b!1334034 (= lt!592204 (getCurrentListMapNoExtraKeys!6415 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22077 (ValueCell!17499 V!54163) V!54163)

(declare-fun dynLambda!3734 (Int (_ BitVec 64)) V!54163)

(assert (=> b!1334034 (= lt!592203 (get!22077 (select (arr!43681 _values!1320) from!1980) (dynLambda!3734 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1334035 () Bool)

(declare-fun res!885429 () Bool)

(assert (=> b!1334035 (=> (not res!885429) (not e!759861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1334035 (= res!885429 (validKeyInArray!0 (select (arr!43680 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56866 () Bool)

(declare-fun tp!108293 () Bool)

(assert (=> mapNonEmpty!56866 (= mapRes!56866 (and tp!108293 e!759865))))

(declare-fun mapValue!56866 () ValueCell!17499)

(declare-fun mapRest!56866 () (Array (_ BitVec 32) ValueCell!17499))

(declare-fun mapKey!56866 () (_ BitVec 32))

(assert (=> mapNonEmpty!56866 (= (arr!43681 _values!1320) (store mapRest!56866 mapKey!56866 mapValue!56866))))

(declare-fun b!1334036 () Bool)

(declare-fun res!885427 () Bool)

(assert (=> b!1334036 (=> (not res!885427) (not e!759860))))

(assert (=> b!1334036 (= res!885427 (not (= k0!1153 (select (arr!43680 _keys!1590) from!1980))))))

(declare-fun b!1334037 () Bool)

(declare-fun res!885437 () Bool)

(assert (=> b!1334037 (=> (not res!885437) (not e!759861))))

(assert (=> b!1334037 (= res!885437 (and (= (size!44232 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44231 _keys!1590) (size!44232 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334038 () Bool)

(declare-fun res!885432 () Bool)

(assert (=> b!1334038 (=> (not res!885432) (not e!759861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90437 (_ BitVec 32)) Bool)

(assert (=> b!1334038 (= res!885432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112526 res!885436) b!1334037))

(assert (= (and b!1334037 res!885437) b!1334038))

(assert (= (and b!1334038 res!885432) b!1334026))

(assert (= (and b!1334026 res!885430) b!1334029))

(assert (= (and b!1334029 res!885428) b!1334031))

(assert (= (and b!1334031 res!885433) b!1334033))

(assert (= (and b!1334033 res!885435) b!1334035))

(assert (= (and b!1334035 res!885429) b!1334032))

(assert (= (and b!1334032 res!885434) b!1334034))

(assert (= (and b!1334034 res!885431) b!1334036))

(assert (= (and b!1334036 res!885427) b!1334025))

(assert (= (and b!1334027 condMapEmpty!56866) mapIsEmpty!56866))

(assert (= (and b!1334027 (not condMapEmpty!56866)) mapNonEmpty!56866))

(get-info :version)

(assert (= (and mapNonEmpty!56866 ((_ is ValueCellFull!17499) mapValue!56866)) b!1334030))

(assert (= (and b!1334027 ((_ is ValueCellFull!17499) mapDefault!56866)) b!1334028))

(assert (= start!112526 b!1334027))

(declare-fun b_lambda!24101 () Bool)

(assert (=> (not b_lambda!24101) (not b!1334034)))

(declare-fun t!45394 () Bool)

(declare-fun tb!12055 () Bool)

(assert (=> (and start!112526 (= defaultEntry!1323 defaultEntry!1323) t!45394) tb!12055))

(declare-fun result!25173 () Bool)

(assert (=> tb!12055 (= result!25173 tp_is_empty!36795)))

(assert (=> b!1334034 t!45394))

(declare-fun b_and!49783 () Bool)

(assert (= b_and!49781 (and (=> t!45394 result!25173) b_and!49783)))

(declare-fun m!1222491 () Bool)

(assert (=> b!1334034 m!1222491))

(declare-fun m!1222493 () Bool)

(assert (=> b!1334034 m!1222493))

(assert (=> b!1334034 m!1222491))

(declare-fun m!1222495 () Bool)

(assert (=> b!1334034 m!1222495))

(declare-fun m!1222497 () Bool)

(assert (=> b!1334034 m!1222497))

(declare-fun m!1222499 () Bool)

(assert (=> b!1334034 m!1222499))

(declare-fun m!1222501 () Bool)

(assert (=> b!1334034 m!1222501))

(assert (=> b!1334034 m!1222493))

(assert (=> b!1334034 m!1222497))

(declare-fun m!1222503 () Bool)

(assert (=> b!1334034 m!1222503))

(assert (=> b!1334035 m!1222501))

(assert (=> b!1334035 m!1222501))

(declare-fun m!1222505 () Bool)

(assert (=> b!1334035 m!1222505))

(declare-fun m!1222507 () Bool)

(assert (=> start!112526 m!1222507))

(declare-fun m!1222509 () Bool)

(assert (=> start!112526 m!1222509))

(declare-fun m!1222511 () Bool)

(assert (=> start!112526 m!1222511))

(assert (=> b!1334036 m!1222501))

(declare-fun m!1222513 () Bool)

(assert (=> mapNonEmpty!56866 m!1222513))

(assert (=> b!1334033 m!1222501))

(declare-fun m!1222515 () Bool)

(assert (=> b!1334025 m!1222515))

(assert (=> b!1334025 m!1222501))

(assert (=> b!1334025 m!1222501))

(declare-fun m!1222517 () Bool)

(assert (=> b!1334025 m!1222517))

(declare-fun m!1222519 () Bool)

(assert (=> b!1334031 m!1222519))

(assert (=> b!1334031 m!1222519))

(declare-fun m!1222521 () Bool)

(assert (=> b!1334031 m!1222521))

(declare-fun m!1222523 () Bool)

(assert (=> b!1334026 m!1222523))

(declare-fun m!1222525 () Bool)

(assert (=> b!1334038 m!1222525))

(check-sat (not b!1334031) (not b!1334025) b_and!49783 (not b!1334026) (not mapNonEmpty!56866) (not b_lambda!24101) (not b_next!30885) (not b!1334034) (not b!1334035) tp_is_empty!36795 (not start!112526) (not b!1334038))
(check-sat b_and!49783 (not b_next!30885))

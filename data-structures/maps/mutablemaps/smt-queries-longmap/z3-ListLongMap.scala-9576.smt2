; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113356 () Bool)

(assert start!113356)

(declare-fun b_free!31371 () Bool)

(declare-fun b_next!31371 () Bool)

(assert (=> start!113356 (= b_free!31371 (not b_next!31371))))

(declare-fun tp!109918 () Bool)

(declare-fun b_and!50605 () Bool)

(assert (=> start!113356 (= tp!109918 b_and!50605)))

(declare-fun mapNonEmpty!57763 () Bool)

(declare-fun mapRes!57763 () Bool)

(declare-fun tp!109919 () Bool)

(declare-fun e!765235 () Bool)

(assert (=> mapNonEmpty!57763 (= mapRes!57763 (and tp!109919 e!765235))))

(declare-datatypes ((V!54931 0))(
  ( (V!54932 (val!18760 Int)) )
))
(declare-datatypes ((ValueCell!17787 0))(
  ( (ValueCellFull!17787 (v!21406 V!54931)) (EmptyCell!17787) )
))
(declare-fun mapValue!57763 () ValueCell!17787)

(declare-fun mapKey!57763 () (_ BitVec 32))

(declare-datatypes ((array!91539 0))(
  ( (array!91540 (arr!44221 (Array (_ BitVec 32) ValueCell!17787)) (size!44772 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91539)

(declare-fun mapRest!57763 () (Array (_ BitVec 32) ValueCell!17787))

(assert (=> mapNonEmpty!57763 (= (arr!44221 _values!1303) (store mapRest!57763 mapKey!57763 mapValue!57763))))

(declare-fun res!892131 () Bool)

(declare-fun e!765233 () Bool)

(assert (=> start!113356 (=> (not res!892131) (not e!765233))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113356 (= res!892131 (validMask!0 mask!1977))))

(assert (=> start!113356 e!765233))

(declare-fun tp_is_empty!37371 () Bool)

(assert (=> start!113356 tp_is_empty!37371))

(assert (=> start!113356 true))

(declare-datatypes ((array!91541 0))(
  ( (array!91542 (arr!44222 (Array (_ BitVec 32) (_ BitVec 64))) (size!44773 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91541)

(declare-fun array_inv!33245 (array!91541) Bool)

(assert (=> start!113356 (array_inv!33245 _keys!1571)))

(declare-fun e!765236 () Bool)

(declare-fun array_inv!33246 (array!91539) Bool)

(assert (=> start!113356 (and (array_inv!33246 _values!1303) e!765236)))

(assert (=> start!113356 tp!109918))

(declare-fun b!1344491 () Bool)

(declare-fun res!892135 () Bool)

(assert (=> b!1344491 (=> (not res!892135) (not e!765233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91541 (_ BitVec 32)) Bool)

(assert (=> b!1344491 (= res!892135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1344492 () Bool)

(declare-fun e!765234 () Bool)

(assert (=> b!1344492 (= e!765236 (and e!765234 mapRes!57763))))

(declare-fun condMapEmpty!57763 () Bool)

(declare-fun mapDefault!57763 () ValueCell!17787)

(assert (=> b!1344492 (= condMapEmpty!57763 (= (arr!44221 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17787)) mapDefault!57763)))))

(declare-fun b!1344493 () Bool)

(declare-fun res!892134 () Bool)

(assert (=> b!1344493 (=> (not res!892134) (not e!765233))))

(declare-datatypes ((List!31492 0))(
  ( (Nil!31489) (Cons!31488 (h!32697 (_ BitVec 64)) (t!46027 List!31492)) )
))
(declare-fun arrayNoDuplicates!0 (array!91541 (_ BitVec 32) List!31492) Bool)

(assert (=> b!1344493 (= res!892134 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31489))))

(declare-fun b!1344494 () Bool)

(declare-fun res!892136 () Bool)

(assert (=> b!1344494 (=> (not res!892136) (not e!765233))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1344494 (= res!892136 (and (= (size!44772 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44773 _keys!1571) (size!44772 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344495 () Bool)

(assert (=> b!1344495 (= e!765235 tp_is_empty!37371)))

(declare-fun b!1344496 () Bool)

(declare-fun res!892132 () Bool)

(assert (=> b!1344496 (=> (not res!892132) (not e!765233))))

(assert (=> b!1344496 (= res!892132 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344497 () Bool)

(declare-fun res!892128 () Bool)

(assert (=> b!1344497 (=> (not res!892128) (not e!765233))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344497 (= res!892128 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44773 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344498 () Bool)

(declare-fun res!892130 () Bool)

(assert (=> b!1344498 (=> (not res!892130) (not e!765233))))

(declare-fun minValue!1245 () V!54931)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!54931)

(declare-datatypes ((tuple2!24318 0))(
  ( (tuple2!24319 (_1!12169 (_ BitVec 64)) (_2!12169 V!54931)) )
))
(declare-datatypes ((List!31493 0))(
  ( (Nil!31490) (Cons!31489 (h!32698 tuple2!24318) (t!46028 List!31493)) )
))
(declare-datatypes ((ListLongMap!21987 0))(
  ( (ListLongMap!21988 (toList!11009 List!31493)) )
))
(declare-fun contains!9121 (ListLongMap!21987 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5902 (array!91541 array!91539 (_ BitVec 32) (_ BitVec 32) V!54931 V!54931 (_ BitVec 32) Int) ListLongMap!21987)

(assert (=> b!1344498 (= res!892130 (contains!9121 (getCurrentListMap!5902 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapIsEmpty!57763 () Bool)

(assert (=> mapIsEmpty!57763 mapRes!57763))

(declare-fun b!1344499 () Bool)

(declare-fun res!892133 () Bool)

(assert (=> b!1344499 (=> (not res!892133) (not e!765233))))

(assert (=> b!1344499 (= res!892133 (not (= (select (arr!44222 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1344500 () Bool)

(assert (=> b!1344500 (= e!765233 false)))

(declare-fun lt!595129 () Bool)

(declare-fun +!4790 (ListLongMap!21987 tuple2!24318) ListLongMap!21987)

(declare-fun getCurrentListMapNoExtraKeys!6513 (array!91541 array!91539 (_ BitVec 32) (_ BitVec 32) V!54931 V!54931 (_ BitVec 32) Int) ListLongMap!21987)

(declare-fun get!22375 (ValueCell!17787 V!54931) V!54931)

(declare-fun dynLambda!3827 (Int (_ BitVec 64)) V!54931)

(assert (=> b!1344500 (= lt!595129 (contains!9121 (+!4790 (getCurrentListMapNoExtraKeys!6513 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24319 (select (arr!44222 _keys!1571) from!1960) (get!22375 (select (arr!44221 _values!1303) from!1960) (dynLambda!3827 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1142))))

(declare-fun b!1344501 () Bool)

(declare-fun res!892129 () Bool)

(assert (=> b!1344501 (=> (not res!892129) (not e!765233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344501 (= res!892129 (validKeyInArray!0 (select (arr!44222 _keys!1571) from!1960)))))

(declare-fun b!1344502 () Bool)

(assert (=> b!1344502 (= e!765234 tp_is_empty!37371)))

(assert (= (and start!113356 res!892131) b!1344494))

(assert (= (and b!1344494 res!892136) b!1344491))

(assert (= (and b!1344491 res!892135) b!1344493))

(assert (= (and b!1344493 res!892134) b!1344497))

(assert (= (and b!1344497 res!892128) b!1344498))

(assert (= (and b!1344498 res!892130) b!1344499))

(assert (= (and b!1344499 res!892133) b!1344501))

(assert (= (and b!1344501 res!892129) b!1344496))

(assert (= (and b!1344496 res!892132) b!1344500))

(assert (= (and b!1344492 condMapEmpty!57763) mapIsEmpty!57763))

(assert (= (and b!1344492 (not condMapEmpty!57763)) mapNonEmpty!57763))

(get-info :version)

(assert (= (and mapNonEmpty!57763 ((_ is ValueCellFull!17787) mapValue!57763)) b!1344495))

(assert (= (and b!1344492 ((_ is ValueCellFull!17787) mapDefault!57763)) b!1344502))

(assert (= start!113356 b!1344492))

(declare-fun b_lambda!24503 () Bool)

(assert (=> (not b_lambda!24503) (not b!1344500)))

(declare-fun t!46026 () Bool)

(declare-fun tb!12339 () Bool)

(assert (=> (and start!113356 (= defaultEntry!1306 defaultEntry!1306) t!46026) tb!12339))

(declare-fun result!25761 () Bool)

(assert (=> tb!12339 (= result!25761 tp_is_empty!37371)))

(assert (=> b!1344500 t!46026))

(declare-fun b_and!50607 () Bool)

(assert (= b_and!50605 (and (=> t!46026 result!25761) b_and!50607)))

(declare-fun m!1232079 () Bool)

(assert (=> b!1344499 m!1232079))

(declare-fun m!1232081 () Bool)

(assert (=> b!1344500 m!1232081))

(declare-fun m!1232083 () Bool)

(assert (=> b!1344500 m!1232083))

(declare-fun m!1232085 () Bool)

(assert (=> b!1344500 m!1232085))

(declare-fun m!1232087 () Bool)

(assert (=> b!1344500 m!1232087))

(assert (=> b!1344500 m!1232081))

(declare-fun m!1232089 () Bool)

(assert (=> b!1344500 m!1232089))

(assert (=> b!1344500 m!1232083))

(assert (=> b!1344500 m!1232085))

(assert (=> b!1344500 m!1232089))

(declare-fun m!1232091 () Bool)

(assert (=> b!1344500 m!1232091))

(assert (=> b!1344500 m!1232079))

(assert (=> b!1344501 m!1232079))

(assert (=> b!1344501 m!1232079))

(declare-fun m!1232093 () Bool)

(assert (=> b!1344501 m!1232093))

(declare-fun m!1232095 () Bool)

(assert (=> mapNonEmpty!57763 m!1232095))

(declare-fun m!1232097 () Bool)

(assert (=> start!113356 m!1232097))

(declare-fun m!1232099 () Bool)

(assert (=> start!113356 m!1232099))

(declare-fun m!1232101 () Bool)

(assert (=> start!113356 m!1232101))

(declare-fun m!1232103 () Bool)

(assert (=> b!1344491 m!1232103))

(declare-fun m!1232105 () Bool)

(assert (=> b!1344498 m!1232105))

(assert (=> b!1344498 m!1232105))

(declare-fun m!1232107 () Bool)

(assert (=> b!1344498 m!1232107))

(declare-fun m!1232109 () Bool)

(assert (=> b!1344493 m!1232109))

(check-sat (not b!1344491) (not b_next!31371) (not mapNonEmpty!57763) (not b!1344498) (not b!1344501) (not b!1344500) tp_is_empty!37371 (not b_lambda!24503) (not start!113356) b_and!50607 (not b!1344493))
(check-sat b_and!50607 (not b_next!31371))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113110 () Bool)

(assert start!113110)

(declare-fun b_free!31125 () Bool)

(declare-fun b_next!31125 () Bool)

(assert (=> start!113110 (= b_free!31125 (not b_next!31125))))

(declare-fun tp!109181 () Bool)

(declare-fun b_and!50167 () Bool)

(assert (=> start!113110 (= tp!109181 b_and!50167)))

(declare-fun b!1340168 () Bool)

(declare-fun e!763391 () Bool)

(assert (=> b!1340168 (= e!763391 false)))

(declare-datatypes ((V!54603 0))(
  ( (V!54604 (val!18637 Int)) )
))
(declare-fun minValue!1245 () V!54603)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91061 0))(
  ( (array!91062 (arr!43982 (Array (_ BitVec 32) (_ BitVec 64))) (size!44533 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91061)

(declare-fun zeroValue!1245 () V!54603)

(declare-fun lt!593905 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17664 0))(
  ( (ValueCellFull!17664 (v!21283 V!54603)) (EmptyCell!17664) )
))
(declare-datatypes ((array!91063 0))(
  ( (array!91064 (arr!43983 (Array (_ BitVec 32) ValueCell!17664)) (size!44534 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91063)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24134 0))(
  ( (tuple2!24135 (_1!12077 (_ BitVec 64)) (_2!12077 V!54603)) )
))
(declare-datatypes ((List!31320 0))(
  ( (Nil!31317) (Cons!31316 (h!32525 tuple2!24134) (t!45663 List!31320)) )
))
(declare-datatypes ((ListLongMap!21803 0))(
  ( (ListLongMap!21804 (toList!10917 List!31320)) )
))
(declare-fun contains!9029 (ListLongMap!21803 (_ BitVec 64)) Bool)

(declare-fun +!4726 (ListLongMap!21803 tuple2!24134) ListLongMap!21803)

(declare-fun getCurrentListMapNoExtraKeys!6449 (array!91061 array!91063 (_ BitVec 32) (_ BitVec 32) V!54603 V!54603 (_ BitVec 32) Int) ListLongMap!21803)

(declare-fun get!22229 (ValueCell!17664 V!54603) V!54603)

(declare-fun dynLambda!3763 (Int (_ BitVec 64)) V!54603)

(assert (=> b!1340168 (= lt!593905 (contains!9029 (+!4726 (+!4726 (getCurrentListMapNoExtraKeys!6449 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24135 (select (arr!43982 _keys!1571) from!1960) (get!22229 (select (arr!43983 _values!1303) from!1960) (dynLambda!3763 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24135 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142))))

(declare-fun b!1340169 () Bool)

(declare-fun res!889105 () Bool)

(assert (=> b!1340169 (=> (not res!889105) (not e!763391))))

(assert (=> b!1340169 (= res!889105 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44533 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!889111 () Bool)

(assert (=> start!113110 (=> (not res!889111) (not e!763391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113110 (= res!889111 (validMask!0 mask!1977))))

(assert (=> start!113110 e!763391))

(declare-fun tp_is_empty!37125 () Bool)

(assert (=> start!113110 tp_is_empty!37125))

(assert (=> start!113110 true))

(declare-fun array_inv!33083 (array!91061) Bool)

(assert (=> start!113110 (array_inv!33083 _keys!1571)))

(declare-fun e!763387 () Bool)

(declare-fun array_inv!33084 (array!91063) Bool)

(assert (=> start!113110 (and (array_inv!33084 _values!1303) e!763387)))

(assert (=> start!113110 tp!109181))

(declare-fun b!1340170 () Bool)

(declare-fun res!889104 () Bool)

(assert (=> b!1340170 (=> (not res!889104) (not e!763391))))

(assert (=> b!1340170 (= res!889104 (not (= (select (arr!43982 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340171 () Bool)

(declare-fun e!763389 () Bool)

(assert (=> b!1340171 (= e!763389 tp_is_empty!37125)))

(declare-fun b!1340172 () Bool)

(declare-fun e!763390 () Bool)

(assert (=> b!1340172 (= e!763390 tp_is_empty!37125)))

(declare-fun b!1340173 () Bool)

(declare-fun res!889107 () Bool)

(assert (=> b!1340173 (=> (not res!889107) (not e!763391))))

(declare-datatypes ((List!31321 0))(
  ( (Nil!31318) (Cons!31317 (h!32526 (_ BitVec 64)) (t!45664 List!31321)) )
))
(declare-fun arrayNoDuplicates!0 (array!91061 (_ BitVec 32) List!31321) Bool)

(assert (=> b!1340173 (= res!889107 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31318))))

(declare-fun b!1340174 () Bool)

(declare-fun res!889112 () Bool)

(assert (=> b!1340174 (=> (not res!889112) (not e!763391))))

(assert (=> b!1340174 (= res!889112 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340175 () Bool)

(declare-fun res!889109 () Bool)

(assert (=> b!1340175 (=> (not res!889109) (not e!763391))))

(assert (=> b!1340175 (= res!889109 (and (= (size!44534 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44533 _keys!1571) (size!44534 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340176 () Bool)

(declare-fun res!889108 () Bool)

(assert (=> b!1340176 (=> (not res!889108) (not e!763391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340176 (= res!889108 (validKeyInArray!0 (select (arr!43982 _keys!1571) from!1960)))))

(declare-fun b!1340177 () Bool)

(declare-fun res!889110 () Bool)

(assert (=> b!1340177 (=> (not res!889110) (not e!763391))))

(declare-fun getCurrentListMap!5821 (array!91061 array!91063 (_ BitVec 32) (_ BitVec 32) V!54603 V!54603 (_ BitVec 32) Int) ListLongMap!21803)

(assert (=> b!1340177 (= res!889110 (contains!9029 (getCurrentListMap!5821 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57394 () Bool)

(declare-fun mapRes!57394 () Bool)

(declare-fun tp!109180 () Bool)

(assert (=> mapNonEmpty!57394 (= mapRes!57394 (and tp!109180 e!763390))))

(declare-fun mapKey!57394 () (_ BitVec 32))

(declare-fun mapRest!57394 () (Array (_ BitVec 32) ValueCell!17664))

(declare-fun mapValue!57394 () ValueCell!17664)

(assert (=> mapNonEmpty!57394 (= (arr!43983 _values!1303) (store mapRest!57394 mapKey!57394 mapValue!57394))))

(declare-fun mapIsEmpty!57394 () Bool)

(assert (=> mapIsEmpty!57394 mapRes!57394))

(declare-fun b!1340178 () Bool)

(assert (=> b!1340178 (= e!763387 (and e!763389 mapRes!57394))))

(declare-fun condMapEmpty!57394 () Bool)

(declare-fun mapDefault!57394 () ValueCell!17664)

(assert (=> b!1340178 (= condMapEmpty!57394 (= (arr!43983 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17664)) mapDefault!57394)))))

(declare-fun b!1340179 () Bool)

(declare-fun res!889106 () Bool)

(assert (=> b!1340179 (=> (not res!889106) (not e!763391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91061 (_ BitVec 32)) Bool)

(assert (=> b!1340179 (= res!889106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!113110 res!889111) b!1340175))

(assert (= (and b!1340175 res!889109) b!1340179))

(assert (= (and b!1340179 res!889106) b!1340173))

(assert (= (and b!1340173 res!889107) b!1340169))

(assert (= (and b!1340169 res!889105) b!1340177))

(assert (= (and b!1340177 res!889110) b!1340170))

(assert (= (and b!1340170 res!889104) b!1340176))

(assert (= (and b!1340176 res!889108) b!1340174))

(assert (= (and b!1340174 res!889112) b!1340168))

(assert (= (and b!1340178 condMapEmpty!57394) mapIsEmpty!57394))

(assert (= (and b!1340178 (not condMapEmpty!57394)) mapNonEmpty!57394))

(get-info :version)

(assert (= (and mapNonEmpty!57394 ((_ is ValueCellFull!17664) mapValue!57394)) b!1340172))

(assert (= (and b!1340178 ((_ is ValueCellFull!17664) mapDefault!57394)) b!1340171))

(assert (= start!113110 b!1340178))

(declare-fun b_lambda!24311 () Bool)

(assert (=> (not b_lambda!24311) (not b!1340168)))

(declare-fun t!45662 () Bool)

(declare-fun tb!12147 () Bool)

(assert (=> (and start!113110 (= defaultEntry!1306 defaultEntry!1306) t!45662) tb!12147))

(declare-fun result!25377 () Bool)

(assert (=> tb!12147 (= result!25377 tp_is_empty!37125)))

(assert (=> b!1340168 t!45662))

(declare-fun b_and!50169 () Bool)

(assert (= b_and!50167 (and (=> t!45662 result!25377) b_and!50169)))

(declare-fun m!1227983 () Bool)

(assert (=> start!113110 m!1227983))

(declare-fun m!1227985 () Bool)

(assert (=> start!113110 m!1227985))

(declare-fun m!1227987 () Bool)

(assert (=> start!113110 m!1227987))

(declare-fun m!1227989 () Bool)

(assert (=> b!1340179 m!1227989))

(declare-fun m!1227991 () Bool)

(assert (=> b!1340170 m!1227991))

(declare-fun m!1227993 () Bool)

(assert (=> mapNonEmpty!57394 m!1227993))

(declare-fun m!1227995 () Bool)

(assert (=> b!1340173 m!1227995))

(declare-fun m!1227997 () Bool)

(assert (=> b!1340168 m!1227997))

(declare-fun m!1227999 () Bool)

(assert (=> b!1340168 m!1227999))

(declare-fun m!1228001 () Bool)

(assert (=> b!1340168 m!1228001))

(declare-fun m!1228003 () Bool)

(assert (=> b!1340168 m!1228003))

(declare-fun m!1228005 () Bool)

(assert (=> b!1340168 m!1228005))

(declare-fun m!1228007 () Bool)

(assert (=> b!1340168 m!1228007))

(assert (=> b!1340168 m!1228001))

(declare-fun m!1228009 () Bool)

(assert (=> b!1340168 m!1228009))

(assert (=> b!1340168 m!1228003))

(assert (=> b!1340168 m!1228005))

(assert (=> b!1340168 m!1227991))

(assert (=> b!1340168 m!1228009))

(assert (=> b!1340168 m!1227997))

(assert (=> b!1340176 m!1227991))

(assert (=> b!1340176 m!1227991))

(declare-fun m!1228011 () Bool)

(assert (=> b!1340176 m!1228011))

(declare-fun m!1228013 () Bool)

(assert (=> b!1340177 m!1228013))

(assert (=> b!1340177 m!1228013))

(declare-fun m!1228015 () Bool)

(assert (=> b!1340177 m!1228015))

(check-sat (not b!1340179) (not b_lambda!24311) (not b!1340168) tp_is_empty!37125 (not b_next!31125) (not b!1340177) (not b!1340176) (not start!113110) b_and!50169 (not mapNonEmpty!57394) (not b!1340173))
(check-sat b_and!50169 (not b_next!31125))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111796 () Bool)

(assert start!111796)

(declare-fun b_free!30417 () Bool)

(declare-fun b_next!30417 () Bool)

(assert (=> start!111796 (= b_free!30417 (not b_next!30417))))

(declare-fun tp!106727 () Bool)

(declare-fun b_and!48965 () Bool)

(assert (=> start!111796 (= tp!106727 b_and!48965)))

(declare-fun b!1324199 () Bool)

(declare-fun res!879024 () Bool)

(declare-fun e!754938 () Bool)

(assert (=> b!1324199 (=> (not res!879024) (not e!754938))))

(declare-datatypes ((array!89343 0))(
  ( (array!89344 (arr!43141 (Array (_ BitVec 32) (_ BitVec 64))) (size!43692 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89343)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1324199 (= res!879024 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43692 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56003 () Bool)

(declare-fun mapRes!56003 () Bool)

(declare-fun tp!106728 () Bool)

(declare-fun e!754939 () Bool)

(assert (=> mapNonEmpty!56003 (= mapRes!56003 (and tp!106728 e!754939))))

(declare-datatypes ((V!53419 0))(
  ( (V!53420 (val!18193 Int)) )
))
(declare-datatypes ((ValueCell!17220 0))(
  ( (ValueCellFull!17220 (v!20821 V!53419)) (EmptyCell!17220) )
))
(declare-fun mapValue!56003 () ValueCell!17220)

(declare-datatypes ((array!89345 0))(
  ( (array!89346 (arr!43142 (Array (_ BitVec 32) ValueCell!17220)) (size!43693 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89345)

(declare-fun mapKey!56003 () (_ BitVec 32))

(declare-fun mapRest!56003 () (Array (_ BitVec 32) ValueCell!17220))

(assert (=> mapNonEmpty!56003 (= (arr!43142 _values!1337) (store mapRest!56003 mapKey!56003 mapValue!56003))))

(declare-fun b!1324200 () Bool)

(declare-fun res!879028 () Bool)

(assert (=> b!1324200 (=> (not res!879028) (not e!754938))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89343 (_ BitVec 32)) Bool)

(assert (=> b!1324200 (= res!879028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324201 () Bool)

(declare-fun res!879025 () Bool)

(assert (=> b!1324201 (=> (not res!879025) (not e!754938))))

(assert (=> b!1324201 (= res!879025 (and (= (size!43693 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43692 _keys!1609) (size!43693 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324202 () Bool)

(declare-fun res!879026 () Bool)

(assert (=> b!1324202 (=> (not res!879026) (not e!754938))))

(declare-datatypes ((List!30778 0))(
  ( (Nil!30775) (Cons!30774 (h!31983 (_ BitVec 64)) (t!44711 List!30778)) )
))
(declare-fun arrayNoDuplicates!0 (array!89343 (_ BitVec 32) List!30778) Bool)

(assert (=> b!1324202 (= res!879026 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30775))))

(declare-fun b!1324203 () Bool)

(declare-fun tp_is_empty!36237 () Bool)

(assert (=> b!1324203 (= e!754939 tp_is_empty!36237)))

(declare-fun b!1324204 () Bool)

(assert (=> b!1324204 (= e!754938 false)))

(declare-fun zeroValue!1279 () V!53419)

(declare-fun minValue!1279 () V!53419)

(declare-fun lt!589390 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23604 0))(
  ( (tuple2!23605 (_1!11812 (_ BitVec 64)) (_2!11812 V!53419)) )
))
(declare-datatypes ((List!30779 0))(
  ( (Nil!30776) (Cons!30775 (h!31984 tuple2!23604) (t!44712 List!30779)) )
))
(declare-datatypes ((ListLongMap!21273 0))(
  ( (ListLongMap!21274 (toList!10652 List!30779)) )
))
(declare-fun contains!8743 (ListLongMap!21273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5589 (array!89343 array!89345 (_ BitVec 32) (_ BitVec 32) V!53419 V!53419 (_ BitVec 32) Int) ListLongMap!21273)

(assert (=> b!1324204 (= lt!589390 (contains!8743 (getCurrentListMap!5589 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapIsEmpty!56003 () Bool)

(assert (=> mapIsEmpty!56003 mapRes!56003))

(declare-fun b!1324205 () Bool)

(declare-fun e!754942 () Bool)

(declare-fun e!754940 () Bool)

(assert (=> b!1324205 (= e!754942 (and e!754940 mapRes!56003))))

(declare-fun condMapEmpty!56003 () Bool)

(declare-fun mapDefault!56003 () ValueCell!17220)

(assert (=> b!1324205 (= condMapEmpty!56003 (= (arr!43142 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17220)) mapDefault!56003)))))

(declare-fun res!879027 () Bool)

(assert (=> start!111796 (=> (not res!879027) (not e!754938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111796 (= res!879027 (validMask!0 mask!2019))))

(assert (=> start!111796 e!754938))

(declare-fun array_inv!32511 (array!89343) Bool)

(assert (=> start!111796 (array_inv!32511 _keys!1609)))

(assert (=> start!111796 true))

(assert (=> start!111796 tp_is_empty!36237))

(declare-fun array_inv!32512 (array!89345) Bool)

(assert (=> start!111796 (and (array_inv!32512 _values!1337) e!754942)))

(assert (=> start!111796 tp!106727))

(declare-fun b!1324206 () Bool)

(assert (=> b!1324206 (= e!754940 tp_is_empty!36237)))

(assert (= (and start!111796 res!879027) b!1324201))

(assert (= (and b!1324201 res!879025) b!1324200))

(assert (= (and b!1324200 res!879028) b!1324202))

(assert (= (and b!1324202 res!879026) b!1324199))

(assert (= (and b!1324199 res!879024) b!1324204))

(assert (= (and b!1324205 condMapEmpty!56003) mapIsEmpty!56003))

(assert (= (and b!1324205 (not condMapEmpty!56003)) mapNonEmpty!56003))

(get-info :version)

(assert (= (and mapNonEmpty!56003 ((_ is ValueCellFull!17220) mapValue!56003)) b!1324203))

(assert (= (and b!1324205 ((_ is ValueCellFull!17220) mapDefault!56003)) b!1324206))

(assert (= start!111796 b!1324205))

(declare-fun m!1213147 () Bool)

(assert (=> start!111796 m!1213147))

(declare-fun m!1213149 () Bool)

(assert (=> start!111796 m!1213149))

(declare-fun m!1213151 () Bool)

(assert (=> start!111796 m!1213151))

(declare-fun m!1213153 () Bool)

(assert (=> mapNonEmpty!56003 m!1213153))

(declare-fun m!1213155 () Bool)

(assert (=> b!1324200 m!1213155))

(declare-fun m!1213157 () Bool)

(assert (=> b!1324202 m!1213157))

(declare-fun m!1213159 () Bool)

(assert (=> b!1324204 m!1213159))

(assert (=> b!1324204 m!1213159))

(declare-fun m!1213161 () Bool)

(assert (=> b!1324204 m!1213161))

(check-sat b_and!48965 tp_is_empty!36237 (not b!1324204) (not b_next!30417) (not b!1324200) (not b!1324202) (not start!111796) (not mapNonEmpty!56003))
(check-sat b_and!48965 (not b_next!30417))

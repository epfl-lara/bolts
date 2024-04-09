; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112598 () Bool)

(assert start!112598)

(declare-fun b_free!30957 () Bool)

(declare-fun b_next!30957 () Bool)

(assert (=> start!112598 (= b_free!30957 (not b_next!30957))))

(declare-fun tp!108509 () Bool)

(declare-fun b_and!49875 () Bool)

(assert (=> start!112598 (= tp!108509 b_and!49875)))

(declare-fun b!1335112 () Bool)

(declare-fun res!886169 () Bool)

(declare-fun e!760433 () Bool)

(assert (=> b!1335112 (=> (not res!886169) (not e!760433))))

(declare-datatypes ((V!54259 0))(
  ( (V!54260 (val!18508 Int)) )
))
(declare-datatypes ((ValueCell!17535 0))(
  ( (ValueCellFull!17535 (v!21143 V!54259)) (EmptyCell!17535) )
))
(declare-datatypes ((array!90571 0))(
  ( (array!90572 (arr!43747 (Array (_ BitVec 32) ValueCell!17535)) (size!44298 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90571)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90573 0))(
  ( (array!90574 (arr!43748 (Array (_ BitVec 32) (_ BitVec 64))) (size!44299 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90573)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun zeroValue!1262 () V!54259)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun minValue!1262 () V!54259)

(declare-datatypes ((tuple2!24018 0))(
  ( (tuple2!24019 (_1!12019 (_ BitVec 64)) (_2!12019 V!54259)) )
))
(declare-datatypes ((List!31189 0))(
  ( (Nil!31186) (Cons!31185 (h!32394 tuple2!24018) (t!45460 List!31189)) )
))
(declare-datatypes ((ListLongMap!21687 0))(
  ( (ListLongMap!21688 (toList!10859 List!31189)) )
))
(declare-fun contains!8959 (ListLongMap!21687 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5770 (array!90573 array!90571 (_ BitVec 32) (_ BitVec 32) V!54259 V!54259 (_ BitVec 32) Int) ListLongMap!21687)

(assert (=> b!1335112 (= res!886169 (contains!8959 (getCurrentListMap!5770 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapIsEmpty!56974 () Bool)

(declare-fun mapRes!56974 () Bool)

(assert (=> mapIsEmpty!56974 mapRes!56974))

(declare-fun b!1335113 () Bool)

(declare-fun res!886173 () Bool)

(assert (=> b!1335113 (=> (not res!886173) (not e!760433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90573 (_ BitVec 32)) Bool)

(assert (=> b!1335113 (= res!886173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335114 () Bool)

(declare-fun e!760431 () Bool)

(declare-fun e!760432 () Bool)

(assert (=> b!1335114 (= e!760431 (and e!760432 mapRes!56974))))

(declare-fun condMapEmpty!56974 () Bool)

(declare-fun mapDefault!56974 () ValueCell!17535)

(assert (=> b!1335114 (= condMapEmpty!56974 (= (arr!43747 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17535)) mapDefault!56974)))))

(declare-fun b!1335115 () Bool)

(declare-fun res!886172 () Bool)

(assert (=> b!1335115 (=> (not res!886172) (not e!760433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335115 (= res!886172 (not (validKeyInArray!0 (select (arr!43748 _keys!1590) from!1980))))))

(declare-fun b!1335116 () Bool)

(declare-fun res!886171 () Bool)

(assert (=> b!1335116 (=> (not res!886171) (not e!760433))))

(declare-datatypes ((List!31190 0))(
  ( (Nil!31187) (Cons!31186 (h!32395 (_ BitVec 64)) (t!45461 List!31190)) )
))
(declare-fun arrayNoDuplicates!0 (array!90573 (_ BitVec 32) List!31190) Bool)

(assert (=> b!1335116 (= res!886171 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31187))))

(declare-fun res!886174 () Bool)

(assert (=> start!112598 (=> (not res!886174) (not e!760433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112598 (= res!886174 (validMask!0 mask!1998))))

(assert (=> start!112598 e!760433))

(declare-fun array_inv!32927 (array!90571) Bool)

(assert (=> start!112598 (and (array_inv!32927 _values!1320) e!760431)))

(assert (=> start!112598 true))

(declare-fun array_inv!32928 (array!90573) Bool)

(assert (=> start!112598 (array_inv!32928 _keys!1590)))

(assert (=> start!112598 tp!108509))

(declare-fun tp_is_empty!36867 () Bool)

(assert (=> start!112598 tp_is_empty!36867))

(declare-fun b!1335117 () Bool)

(declare-fun res!886170 () Bool)

(assert (=> b!1335117 (=> (not res!886170) (not e!760433))))

(assert (=> b!1335117 (= res!886170 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44299 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335118 () Bool)

(assert (=> b!1335118 (= e!760432 tp_is_empty!36867)))

(declare-fun b!1335119 () Bool)

(declare-fun res!886168 () Bool)

(assert (=> b!1335119 (=> (not res!886168) (not e!760433))))

(assert (=> b!1335119 (= res!886168 (and (= (size!44298 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44299 _keys!1590) (size!44298 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335120 () Bool)

(assert (=> b!1335120 (= e!760433 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000))))

(declare-fun b!1335121 () Bool)

(declare-fun e!760434 () Bool)

(assert (=> b!1335121 (= e!760434 tp_is_empty!36867)))

(declare-fun b!1335122 () Bool)

(declare-fun res!886175 () Bool)

(assert (=> b!1335122 (=> (not res!886175) (not e!760433))))

(assert (=> b!1335122 (= res!886175 (not (= (select (arr!43748 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapNonEmpty!56974 () Bool)

(declare-fun tp!108508 () Bool)

(assert (=> mapNonEmpty!56974 (= mapRes!56974 (and tp!108508 e!760434))))

(declare-fun mapValue!56974 () ValueCell!17535)

(declare-fun mapKey!56974 () (_ BitVec 32))

(declare-fun mapRest!56974 () (Array (_ BitVec 32) ValueCell!17535))

(assert (=> mapNonEmpty!56974 (= (arr!43747 _values!1320) (store mapRest!56974 mapKey!56974 mapValue!56974))))

(assert (= (and start!112598 res!886174) b!1335119))

(assert (= (and b!1335119 res!886168) b!1335113))

(assert (= (and b!1335113 res!886173) b!1335116))

(assert (= (and b!1335116 res!886171) b!1335117))

(assert (= (and b!1335117 res!886170) b!1335112))

(assert (= (and b!1335112 res!886169) b!1335122))

(assert (= (and b!1335122 res!886175) b!1335115))

(assert (= (and b!1335115 res!886172) b!1335120))

(assert (= (and b!1335114 condMapEmpty!56974) mapIsEmpty!56974))

(assert (= (and b!1335114 (not condMapEmpty!56974)) mapNonEmpty!56974))

(get-info :version)

(assert (= (and mapNonEmpty!56974 ((_ is ValueCellFull!17535) mapValue!56974)) b!1335121))

(assert (= (and b!1335114 ((_ is ValueCellFull!17535) mapDefault!56974)) b!1335118))

(assert (= start!112598 b!1335114))

(declare-fun m!1223291 () Bool)

(assert (=> start!112598 m!1223291))

(declare-fun m!1223293 () Bool)

(assert (=> start!112598 m!1223293))

(declare-fun m!1223295 () Bool)

(assert (=> start!112598 m!1223295))

(declare-fun m!1223297 () Bool)

(assert (=> b!1335115 m!1223297))

(assert (=> b!1335115 m!1223297))

(declare-fun m!1223299 () Bool)

(assert (=> b!1335115 m!1223299))

(declare-fun m!1223301 () Bool)

(assert (=> b!1335112 m!1223301))

(assert (=> b!1335112 m!1223301))

(declare-fun m!1223303 () Bool)

(assert (=> b!1335112 m!1223303))

(assert (=> b!1335122 m!1223297))

(declare-fun m!1223305 () Bool)

(assert (=> b!1335116 m!1223305))

(declare-fun m!1223307 () Bool)

(assert (=> mapNonEmpty!56974 m!1223307))

(declare-fun m!1223309 () Bool)

(assert (=> b!1335113 m!1223309))

(check-sat (not b!1335112) (not b!1335116) (not mapNonEmpty!56974) (not start!112598) (not b_next!30957) b_and!49875 (not b!1335113) tp_is_empty!36867 (not b!1335115))
(check-sat b_and!49875 (not b_next!30957))

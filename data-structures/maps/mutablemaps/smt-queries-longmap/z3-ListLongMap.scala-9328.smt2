; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111442 () Bool)

(assert start!111442)

(declare-fun b_free!30063 () Bool)

(declare-fun b_next!30063 () Bool)

(assert (=> start!111442 (= b_free!30063 (not b_next!30063))))

(declare-fun tp!105666 () Bool)

(declare-fun b_and!48295 () Bool)

(assert (=> start!111442 (= tp!105666 b_and!48295)))

(declare-fun b!1318219 () Bool)

(declare-fun res!874959 () Bool)

(declare-fun e!752286 () Bool)

(assert (=> b!1318219 (=> (not res!874959) (not e!752286))))

(declare-datatypes ((array!88669 0))(
  ( (array!88670 (arr!42804 (Array (_ BitVec 32) (_ BitVec 64))) (size!43355 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88669)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318219 (= res!874959 (validKeyInArray!0 (select (arr!42804 _keys!1609) from!2000)))))

(declare-fun b!1318220 () Bool)

(declare-fun res!874953 () Bool)

(assert (=> b!1318220 (=> (not res!874953) (not e!752286))))

(declare-datatypes ((List!30528 0))(
  ( (Nil!30525) (Cons!30524 (h!31733 (_ BitVec 64)) (t!44147 List!30528)) )
))
(declare-fun arrayNoDuplicates!0 (array!88669 (_ BitVec 32) List!30528) Bool)

(assert (=> b!1318220 (= res!874953 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30525))))

(declare-fun b!1318221 () Bool)

(declare-fun e!752287 () Bool)

(declare-fun tp_is_empty!35883 () Bool)

(assert (=> b!1318221 (= e!752287 tp_is_empty!35883)))

(declare-fun mapIsEmpty!55472 () Bool)

(declare-fun mapRes!55472 () Bool)

(assert (=> mapIsEmpty!55472 mapRes!55472))

(declare-fun b!1318222 () Bool)

(declare-fun res!874955 () Bool)

(assert (=> b!1318222 (=> (not res!874955) (not e!752286))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88669 (_ BitVec 32)) Bool)

(assert (=> b!1318222 (= res!874955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318223 () Bool)

(declare-fun res!874954 () Bool)

(assert (=> b!1318223 (=> (not res!874954) (not e!752286))))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1318223 (= res!874954 (not (= (select (arr!42804 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapNonEmpty!55472 () Bool)

(declare-fun tp!105665 () Bool)

(declare-fun e!752284 () Bool)

(assert (=> mapNonEmpty!55472 (= mapRes!55472 (and tp!105665 e!752284))))

(declare-fun mapKey!55472 () (_ BitVec 32))

(declare-datatypes ((V!52947 0))(
  ( (V!52948 (val!18016 Int)) )
))
(declare-datatypes ((ValueCell!17043 0))(
  ( (ValueCellFull!17043 (v!20644 V!52947)) (EmptyCell!17043) )
))
(declare-datatypes ((array!88671 0))(
  ( (array!88672 (arr!42805 (Array (_ BitVec 32) ValueCell!17043)) (size!43356 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88671)

(declare-fun mapValue!55472 () ValueCell!17043)

(declare-fun mapRest!55472 () (Array (_ BitVec 32) ValueCell!17043))

(assert (=> mapNonEmpty!55472 (= (arr!42805 _values!1337) (store mapRest!55472 mapKey!55472 mapValue!55472))))

(declare-fun b!1318224 () Bool)

(declare-fun res!874958 () Bool)

(assert (=> b!1318224 (=> (not res!874958) (not e!752286))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52947)

(declare-fun defaultEntry!1340 () Int)

(declare-fun minValue!1279 () V!52947)

(declare-datatypes ((tuple2!23336 0))(
  ( (tuple2!23337 (_1!11678 (_ BitVec 64)) (_2!11678 V!52947)) )
))
(declare-datatypes ((List!30529 0))(
  ( (Nil!30526) (Cons!30525 (h!31734 tuple2!23336) (t!44148 List!30529)) )
))
(declare-datatypes ((ListLongMap!21005 0))(
  ( (ListLongMap!21006 (toList!10518 List!30529)) )
))
(declare-fun contains!8609 (ListLongMap!21005 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5474 (array!88669 array!88671 (_ BitVec 32) (_ BitVec 32) V!52947 V!52947 (_ BitVec 32) Int) ListLongMap!21005)

(assert (=> b!1318224 (= res!874958 (contains!8609 (getCurrentListMap!5474 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318225 () Bool)

(declare-fun e!752285 () Bool)

(assert (=> b!1318225 (= e!752285 (and e!752287 mapRes!55472))))

(declare-fun condMapEmpty!55472 () Bool)

(declare-fun mapDefault!55472 () ValueCell!17043)

(assert (=> b!1318225 (= condMapEmpty!55472 (= (arr!42805 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17043)) mapDefault!55472)))))

(declare-fun b!1318226 () Bool)

(assert (=> b!1318226 (= e!752284 tp_is_empty!35883)))

(declare-fun b!1318227 () Bool)

(declare-fun res!874956 () Bool)

(assert (=> b!1318227 (=> (not res!874956) (not e!752286))))

(assert (=> b!1318227 (= res!874956 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43355 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318228 () Bool)

(assert (=> b!1318228 (= e!752286 false)))

(declare-fun lt!586393 () Bool)

(declare-fun +!4479 (ListLongMap!21005 tuple2!23336) ListLongMap!21005)

(declare-fun getCurrentListMapNoExtraKeys!6194 (array!88669 array!88671 (_ BitVec 32) (_ BitVec 32) V!52947 V!52947 (_ BitVec 32) Int) ListLongMap!21005)

(declare-fun get!21547 (ValueCell!17043 V!52947) V!52947)

(declare-fun dynLambda!3516 (Int (_ BitVec 64)) V!52947)

(assert (=> b!1318228 (= lt!586393 (contains!8609 (+!4479 (+!4479 (+!4479 (getCurrentListMapNoExtraKeys!6194 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23337 (select (arr!42804 _keys!1609) from!2000) (get!21547 (select (arr!42805 _values!1337) from!2000) (dynLambda!3516 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23337 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23337 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164))))

(declare-fun b!1318229 () Bool)

(declare-fun res!874957 () Bool)

(assert (=> b!1318229 (=> (not res!874957) (not e!752286))))

(assert (=> b!1318229 (= res!874957 (and (= (size!43356 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43355 _keys!1609) (size!43356 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!874960 () Bool)

(assert (=> start!111442 (=> (not res!874960) (not e!752286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111442 (= res!874960 (validMask!0 mask!2019))))

(assert (=> start!111442 e!752286))

(declare-fun array_inv!32279 (array!88669) Bool)

(assert (=> start!111442 (array_inv!32279 _keys!1609)))

(assert (=> start!111442 true))

(assert (=> start!111442 tp_is_empty!35883))

(declare-fun array_inv!32280 (array!88671) Bool)

(assert (=> start!111442 (and (array_inv!32280 _values!1337) e!752285)))

(assert (=> start!111442 tp!105666))

(assert (= (and start!111442 res!874960) b!1318229))

(assert (= (and b!1318229 res!874957) b!1318222))

(assert (= (and b!1318222 res!874955) b!1318220))

(assert (= (and b!1318220 res!874953) b!1318227))

(assert (= (and b!1318227 res!874956) b!1318224))

(assert (= (and b!1318224 res!874958) b!1318223))

(assert (= (and b!1318223 res!874954) b!1318219))

(assert (= (and b!1318219 res!874959) b!1318228))

(assert (= (and b!1318225 condMapEmpty!55472) mapIsEmpty!55472))

(assert (= (and b!1318225 (not condMapEmpty!55472)) mapNonEmpty!55472))

(get-info :version)

(assert (= (and mapNonEmpty!55472 ((_ is ValueCellFull!17043) mapValue!55472)) b!1318226))

(assert (= (and b!1318225 ((_ is ValueCellFull!17043) mapDefault!55472)) b!1318221))

(assert (= start!111442 b!1318225))

(declare-fun b_lambda!23399 () Bool)

(assert (=> (not b_lambda!23399) (not b!1318228)))

(declare-fun t!44146 () Bool)

(declare-fun tb!11423 () Bool)

(assert (=> (and start!111442 (= defaultEntry!1340 defaultEntry!1340) t!44146) tb!11423))

(declare-fun result!23893 () Bool)

(assert (=> tb!11423 (= result!23893 tp_is_empty!35883)))

(assert (=> b!1318228 t!44146))

(declare-fun b_and!48297 () Bool)

(assert (= b_and!48295 (and (=> t!44146 result!23893) b_and!48297)))

(declare-fun m!1205823 () Bool)

(assert (=> mapNonEmpty!55472 m!1205823))

(declare-fun m!1205825 () Bool)

(assert (=> b!1318223 m!1205825))

(declare-fun m!1205827 () Bool)

(assert (=> b!1318224 m!1205827))

(assert (=> b!1318224 m!1205827))

(declare-fun m!1205829 () Bool)

(assert (=> b!1318224 m!1205829))

(declare-fun m!1205831 () Bool)

(assert (=> start!111442 m!1205831))

(declare-fun m!1205833 () Bool)

(assert (=> start!111442 m!1205833))

(declare-fun m!1205835 () Bool)

(assert (=> start!111442 m!1205835))

(declare-fun m!1205837 () Bool)

(assert (=> b!1318220 m!1205837))

(declare-fun m!1205839 () Bool)

(assert (=> b!1318228 m!1205839))

(declare-fun m!1205841 () Bool)

(assert (=> b!1318228 m!1205841))

(assert (=> b!1318228 m!1205839))

(declare-fun m!1205843 () Bool)

(assert (=> b!1318228 m!1205843))

(declare-fun m!1205845 () Bool)

(assert (=> b!1318228 m!1205845))

(declare-fun m!1205847 () Bool)

(assert (=> b!1318228 m!1205847))

(declare-fun m!1205849 () Bool)

(assert (=> b!1318228 m!1205849))

(assert (=> b!1318228 m!1205843))

(declare-fun m!1205851 () Bool)

(assert (=> b!1318228 m!1205851))

(assert (=> b!1318228 m!1205825))

(assert (=> b!1318228 m!1205851))

(assert (=> b!1318228 m!1205845))

(assert (=> b!1318228 m!1205849))

(assert (=> b!1318228 m!1205841))

(declare-fun m!1205853 () Bool)

(assert (=> b!1318228 m!1205853))

(declare-fun m!1205855 () Bool)

(assert (=> b!1318222 m!1205855))

(assert (=> b!1318219 m!1205825))

(assert (=> b!1318219 m!1205825))

(declare-fun m!1205857 () Bool)

(assert (=> b!1318219 m!1205857))

(check-sat (not mapNonEmpty!55472) (not b!1318224) b_and!48297 (not b!1318228) (not b_next!30063) (not b!1318220) tp_is_empty!35883 (not b_lambda!23399) (not start!111442) (not b!1318222) (not b!1318219))
(check-sat b_and!48297 (not b_next!30063))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133604 () Bool)

(assert start!133604)

(declare-fun b_free!31989 () Bool)

(declare-fun b_next!31989 () Bool)

(assert (=> start!133604 (= b_free!31989 (not b_next!31989))))

(declare-fun tp!113092 () Bool)

(declare-fun b_and!51499 () Bool)

(assert (=> start!133604 (= tp!113092 b_and!51499)))

(declare-fun b!1561489 () Bool)

(declare-fun e!870193 () Bool)

(assert (=> b!1561489 (= e!870193 (not true))))

(declare-datatypes ((V!59747 0))(
  ( (V!59748 (val!19411 Int)) )
))
(declare-datatypes ((tuple2!25224 0))(
  ( (tuple2!25225 (_1!12622 (_ BitVec 64)) (_2!12622 V!59747)) )
))
(declare-datatypes ((List!36600 0))(
  ( (Nil!36597) (Cons!36596 (h!38043 tuple2!25224) (t!51386 List!36600)) )
))
(declare-datatypes ((ListLongMap!22671 0))(
  ( (ListLongMap!22672 (toList!11351 List!36600)) )
))
(declare-fun lt!671188 () ListLongMap!22671)

(declare-fun lt!671189 () V!59747)

(declare-datatypes ((array!103981 0))(
  ( (array!103982 (arr!50178 (Array (_ BitVec 32) (_ BitVec 64))) (size!50729 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103981)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10271 (ListLongMap!22671 (_ BitVec 64)) Bool)

(declare-fun +!5006 (ListLongMap!22671 tuple2!25224) ListLongMap!22671)

(assert (=> b!1561489 (not (contains!10271 (+!5006 lt!671188 (tuple2!25225 (select (arr!50178 _keys!637) from!782) lt!671189)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51876 0))(
  ( (Unit!51877) )
))
(declare-fun lt!671190 () Unit!51876)

(declare-fun addStillNotContains!542 (ListLongMap!22671 (_ BitVec 64) V!59747 (_ BitVec 64)) Unit!51876)

(assert (=> b!1561489 (= lt!671190 (addStillNotContains!542 lt!671188 (select (arr!50178 _keys!637) from!782) lt!671189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18297 0))(
  ( (ValueCellFull!18297 (v!22160 V!59747)) (EmptyCell!18297) )
))
(declare-datatypes ((array!103983 0))(
  ( (array!103984 (arr!50179 (Array (_ BitVec 32) ValueCell!18297)) (size!50730 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103983)

(declare-fun get!26242 (ValueCell!18297 V!59747) V!59747)

(declare-fun dynLambda!3895 (Int (_ BitVec 64)) V!59747)

(assert (=> b!1561489 (= lt!671189 (get!26242 (select (arr!50179 _values!487) from!782) (dynLambda!3895 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59747)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59747)

(declare-fun getCurrentListMapNoExtraKeys!6712 (array!103981 array!103983 (_ BitVec 32) (_ BitVec 32) V!59747 V!59747 (_ BitVec 32) Int) ListLongMap!22671)

(assert (=> b!1561489 (= lt!671188 (getCurrentListMapNoExtraKeys!6712 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1067748 () Bool)

(assert (=> start!133604 (=> (not res!1067748) (not e!870193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133604 (= res!1067748 (validMask!0 mask!947))))

(assert (=> start!133604 e!870193))

(assert (=> start!133604 tp!113092))

(declare-fun tp_is_empty!38655 () Bool)

(assert (=> start!133604 tp_is_empty!38655))

(assert (=> start!133604 true))

(declare-fun array_inv!38933 (array!103981) Bool)

(assert (=> start!133604 (array_inv!38933 _keys!637)))

(declare-fun e!870197 () Bool)

(declare-fun array_inv!38934 (array!103983) Bool)

(assert (=> start!133604 (and (array_inv!38934 _values!487) e!870197)))

(declare-fun b!1561490 () Bool)

(declare-fun res!1067746 () Bool)

(assert (=> b!1561490 (=> (not res!1067746) (not e!870193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561490 (= res!1067746 (validKeyInArray!0 (select (arr!50178 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59358 () Bool)

(declare-fun mapRes!59358 () Bool)

(declare-fun tp!113091 () Bool)

(declare-fun e!870195 () Bool)

(assert (=> mapNonEmpty!59358 (= mapRes!59358 (and tp!113091 e!870195))))

(declare-fun mapRest!59358 () (Array (_ BitVec 32) ValueCell!18297))

(declare-fun mapValue!59358 () ValueCell!18297)

(declare-fun mapKey!59358 () (_ BitVec 32))

(assert (=> mapNonEmpty!59358 (= (arr!50179 _values!487) (store mapRest!59358 mapKey!59358 mapValue!59358))))

(declare-fun b!1561491 () Bool)

(declare-fun e!870194 () Bool)

(assert (=> b!1561491 (= e!870197 (and e!870194 mapRes!59358))))

(declare-fun condMapEmpty!59358 () Bool)

(declare-fun mapDefault!59358 () ValueCell!18297)

(assert (=> b!1561491 (= condMapEmpty!59358 (= (arr!50179 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18297)) mapDefault!59358)))))

(declare-fun b!1561492 () Bool)

(assert (=> b!1561492 (= e!870195 tp_is_empty!38655)))

(declare-fun b!1561493 () Bool)

(declare-fun res!1067745 () Bool)

(assert (=> b!1561493 (=> (not res!1067745) (not e!870193))))

(assert (=> b!1561493 (= res!1067745 (and (= (size!50730 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50729 _keys!637) (size!50730 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561494 () Bool)

(assert (=> b!1561494 (= e!870194 tp_is_empty!38655)))

(declare-fun b!1561495 () Bool)

(declare-fun res!1067749 () Bool)

(assert (=> b!1561495 (=> (not res!1067749) (not e!870193))))

(assert (=> b!1561495 (= res!1067749 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50729 _keys!637)) (bvslt from!782 (size!50729 _keys!637))))))

(declare-fun mapIsEmpty!59358 () Bool)

(assert (=> mapIsEmpty!59358 mapRes!59358))

(declare-fun b!1561496 () Bool)

(declare-fun res!1067750 () Bool)

(assert (=> b!1561496 (=> (not res!1067750) (not e!870193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103981 (_ BitVec 32)) Bool)

(assert (=> b!1561496 (= res!1067750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561497 () Bool)

(declare-fun res!1067747 () Bool)

(assert (=> b!1561497 (=> (not res!1067747) (not e!870193))))

(declare-datatypes ((List!36601 0))(
  ( (Nil!36598) (Cons!36597 (h!38044 (_ BitVec 64)) (t!51387 List!36601)) )
))
(declare-fun arrayNoDuplicates!0 (array!103981 (_ BitVec 32) List!36601) Bool)

(assert (=> b!1561497 (= res!1067747 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36598))))

(assert (= (and start!133604 res!1067748) b!1561493))

(assert (= (and b!1561493 res!1067745) b!1561496))

(assert (= (and b!1561496 res!1067750) b!1561497))

(assert (= (and b!1561497 res!1067747) b!1561495))

(assert (= (and b!1561495 res!1067749) b!1561490))

(assert (= (and b!1561490 res!1067746) b!1561489))

(assert (= (and b!1561491 condMapEmpty!59358) mapIsEmpty!59358))

(assert (= (and b!1561491 (not condMapEmpty!59358)) mapNonEmpty!59358))

(get-info :version)

(assert (= (and mapNonEmpty!59358 ((_ is ValueCellFull!18297) mapValue!59358)) b!1561492))

(assert (= (and b!1561491 ((_ is ValueCellFull!18297) mapDefault!59358)) b!1561494))

(assert (= start!133604 b!1561491))

(declare-fun b_lambda!24873 () Bool)

(assert (=> (not b_lambda!24873) (not b!1561489)))

(declare-fun t!51385 () Bool)

(declare-fun tb!12541 () Bool)

(assert (=> (and start!133604 (= defaultEntry!495 defaultEntry!495) t!51385) tb!12541))

(declare-fun result!26355 () Bool)

(assert (=> tb!12541 (= result!26355 tp_is_empty!38655)))

(assert (=> b!1561489 t!51385))

(declare-fun b_and!51501 () Bool)

(assert (= b_and!51499 (and (=> t!51385 result!26355) b_and!51501)))

(declare-fun m!1437223 () Bool)

(assert (=> start!133604 m!1437223))

(declare-fun m!1437225 () Bool)

(assert (=> start!133604 m!1437225))

(declare-fun m!1437227 () Bool)

(assert (=> start!133604 m!1437227))

(declare-fun m!1437229 () Bool)

(assert (=> b!1561496 m!1437229))

(declare-fun m!1437231 () Bool)

(assert (=> mapNonEmpty!59358 m!1437231))

(declare-fun m!1437233 () Bool)

(assert (=> b!1561489 m!1437233))

(declare-fun m!1437235 () Bool)

(assert (=> b!1561489 m!1437235))

(declare-fun m!1437237 () Bool)

(assert (=> b!1561489 m!1437237))

(assert (=> b!1561489 m!1437233))

(declare-fun m!1437239 () Bool)

(assert (=> b!1561489 m!1437239))

(declare-fun m!1437241 () Bool)

(assert (=> b!1561489 m!1437241))

(assert (=> b!1561489 m!1437239))

(declare-fun m!1437243 () Bool)

(assert (=> b!1561489 m!1437243))

(assert (=> b!1561489 m!1437241))

(declare-fun m!1437245 () Bool)

(assert (=> b!1561489 m!1437245))

(assert (=> b!1561489 m!1437235))

(declare-fun m!1437247 () Bool)

(assert (=> b!1561489 m!1437247))

(declare-fun m!1437249 () Bool)

(assert (=> b!1561497 m!1437249))

(assert (=> b!1561490 m!1437239))

(assert (=> b!1561490 m!1437239))

(declare-fun m!1437251 () Bool)

(assert (=> b!1561490 m!1437251))

(check-sat (not start!133604) (not b!1561490) (not b!1561497) b_and!51501 (not b_next!31989) (not mapNonEmpty!59358) (not b_lambda!24873) (not b!1561496) (not b!1561489) tp_is_empty!38655)
(check-sat b_and!51501 (not b_next!31989))

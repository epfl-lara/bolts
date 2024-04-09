; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133960 () Bool)

(assert start!133960)

(declare-fun b_free!32151 () Bool)

(declare-fun b_next!32151 () Bool)

(assert (=> start!133960 (= b_free!32151 (not b_next!32151))))

(declare-fun tp!113755 () Bool)

(declare-fun b_and!51753 () Bool)

(assert (=> start!133960 (= tp!113755 b_and!51753)))

(declare-fun b!1565423 () Bool)

(declare-fun e!872576 () Bool)

(declare-fun tp_is_empty!38925 () Bool)

(assert (=> b!1565423 (= e!872576 tp_is_empty!38925)))

(declare-fun b!1565425 () Bool)

(declare-fun e!872575 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((V!60107 0))(
  ( (V!60108 (val!19546 Int)) )
))
(declare-datatypes ((ValueCell!18432 0))(
  ( (ValueCellFull!18432 (v!22299 V!60107)) (EmptyCell!18432) )
))
(declare-datatypes ((array!104511 0))(
  ( (array!104512 (arr!50438 (Array (_ BitVec 32) ValueCell!18432)) (size!50989 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104511)

(assert (=> b!1565425 (= e!872575 (not (bvslt from!782 (size!50989 _values!487))))))

(declare-fun lt!672226 () V!60107)

(declare-datatypes ((array!104513 0))(
  ( (array!104514 (arr!50439 (Array (_ BitVec 32) (_ BitVec 64))) (size!50990 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104513)

(declare-datatypes ((tuple2!25378 0))(
  ( (tuple2!25379 (_1!12699 (_ BitVec 64)) (_2!12699 V!60107)) )
))
(declare-datatypes ((List!36767 0))(
  ( (Nil!36764) (Cons!36763 (h!38210 tuple2!25378) (t!51639 List!36767)) )
))
(declare-datatypes ((ListLongMap!22825 0))(
  ( (ListLongMap!22826 (toList!11428 List!36767)) )
))
(declare-fun lt!672225 () ListLongMap!22825)

(declare-fun contains!10349 (ListLongMap!22825 (_ BitVec 64)) Bool)

(declare-fun +!5035 (ListLongMap!22825 tuple2!25378) ListLongMap!22825)

(assert (=> b!1565425 (not (contains!10349 (+!5035 lt!672225 (tuple2!25379 (select (arr!50439 _keys!637) from!782) lt!672226)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51944 0))(
  ( (Unit!51945) )
))
(declare-fun lt!672227 () Unit!51944)

(declare-fun addStillNotContains!571 (ListLongMap!22825 (_ BitVec 64) V!60107 (_ BitVec 64)) Unit!51944)

(assert (=> b!1565425 (= lt!672227 (addStillNotContains!571 lt!672225 (select (arr!50439 _keys!637) from!782) lt!672226 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26363 (ValueCell!18432 V!60107) V!60107)

(declare-fun dynLambda!3924 (Int (_ BitVec 64)) V!60107)

(assert (=> b!1565425 (= lt!672226 (get!26363 (select (arr!50438 _values!487) from!782) (dynLambda!3924 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60107)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60107)

(declare-fun getCurrentListMapNoExtraKeys!6768 (array!104513 array!104511 (_ BitVec 32) (_ BitVec 32) V!60107 V!60107 (_ BitVec 32) Int) ListLongMap!22825)

(assert (=> b!1565425 (= lt!672225 (getCurrentListMapNoExtraKeys!6768 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565426 () Bool)

(declare-fun res!1070179 () Bool)

(assert (=> b!1565426 (=> (not res!1070179) (not e!872575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565426 (= res!1070179 (validKeyInArray!0 (select (arr!50439 _keys!637) from!782)))))

(declare-fun b!1565427 () Bool)

(declare-fun res!1070180 () Bool)

(assert (=> b!1565427 (=> (not res!1070180) (not e!872575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104513 (_ BitVec 32)) Bool)

(assert (=> b!1565427 (= res!1070180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565428 () Bool)

(declare-fun res!1070183 () Bool)

(assert (=> b!1565428 (=> (not res!1070183) (not e!872575))))

(assert (=> b!1565428 (= res!1070183 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50990 _keys!637)) (bvslt from!782 (size!50990 _keys!637))))))

(declare-fun mapNonEmpty!59779 () Bool)

(declare-fun mapRes!59779 () Bool)

(declare-fun tp!113756 () Bool)

(declare-fun e!872578 () Bool)

(assert (=> mapNonEmpty!59779 (= mapRes!59779 (and tp!113756 e!872578))))

(declare-fun mapRest!59779 () (Array (_ BitVec 32) ValueCell!18432))

(declare-fun mapValue!59779 () ValueCell!18432)

(declare-fun mapKey!59779 () (_ BitVec 32))

(assert (=> mapNonEmpty!59779 (= (arr!50438 _values!487) (store mapRest!59779 mapKey!59779 mapValue!59779))))

(declare-fun b!1565429 () Bool)

(assert (=> b!1565429 (= e!872578 tp_is_empty!38925)))

(declare-fun mapIsEmpty!59779 () Bool)

(assert (=> mapIsEmpty!59779 mapRes!59779))

(declare-fun b!1565424 () Bool)

(declare-fun e!872577 () Bool)

(assert (=> b!1565424 (= e!872577 (and e!872576 mapRes!59779))))

(declare-fun condMapEmpty!59779 () Bool)

(declare-fun mapDefault!59779 () ValueCell!18432)

(assert (=> b!1565424 (= condMapEmpty!59779 (= (arr!50438 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18432)) mapDefault!59779)))))

(declare-fun res!1070182 () Bool)

(assert (=> start!133960 (=> (not res!1070182) (not e!872575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133960 (= res!1070182 (validMask!0 mask!947))))

(assert (=> start!133960 e!872575))

(assert (=> start!133960 tp!113755))

(assert (=> start!133960 tp_is_empty!38925))

(assert (=> start!133960 true))

(declare-fun array_inv!39111 (array!104513) Bool)

(assert (=> start!133960 (array_inv!39111 _keys!637)))

(declare-fun array_inv!39112 (array!104511) Bool)

(assert (=> start!133960 (and (array_inv!39112 _values!487) e!872577)))

(declare-fun b!1565430 () Bool)

(declare-fun res!1070181 () Bool)

(assert (=> b!1565430 (=> (not res!1070181) (not e!872575))))

(assert (=> b!1565430 (= res!1070181 (and (= (size!50989 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50990 _keys!637) (size!50989 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565431 () Bool)

(declare-fun res!1070184 () Bool)

(assert (=> b!1565431 (=> (not res!1070184) (not e!872575))))

(declare-datatypes ((List!36768 0))(
  ( (Nil!36765) (Cons!36764 (h!38211 (_ BitVec 64)) (t!51640 List!36768)) )
))
(declare-fun arrayNoDuplicates!0 (array!104513 (_ BitVec 32) List!36768) Bool)

(assert (=> b!1565431 (= res!1070184 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36765))))

(assert (= (and start!133960 res!1070182) b!1565430))

(assert (= (and b!1565430 res!1070181) b!1565427))

(assert (= (and b!1565427 res!1070180) b!1565431))

(assert (= (and b!1565431 res!1070184) b!1565428))

(assert (= (and b!1565428 res!1070183) b!1565426))

(assert (= (and b!1565426 res!1070179) b!1565425))

(assert (= (and b!1565424 condMapEmpty!59779) mapIsEmpty!59779))

(assert (= (and b!1565424 (not condMapEmpty!59779)) mapNonEmpty!59779))

(get-info :version)

(assert (= (and mapNonEmpty!59779 ((_ is ValueCellFull!18432) mapValue!59779)) b!1565429))

(assert (= (and b!1565424 ((_ is ValueCellFull!18432) mapDefault!59779)) b!1565423))

(assert (= start!133960 b!1565424))

(declare-fun b_lambda!24975 () Bool)

(assert (=> (not b_lambda!24975) (not b!1565425)))

(declare-fun t!51638 () Bool)

(declare-fun tb!12627 () Bool)

(assert (=> (and start!133960 (= defaultEntry!495 defaultEntry!495) t!51638) tb!12627))

(declare-fun result!26537 () Bool)

(assert (=> tb!12627 (= result!26537 tp_is_empty!38925)))

(assert (=> b!1565425 t!51638))

(declare-fun b_and!51755 () Bool)

(assert (= b_and!51753 (and (=> t!51638 result!26537) b_and!51755)))

(declare-fun m!1440377 () Bool)

(assert (=> b!1565425 m!1440377))

(declare-fun m!1440379 () Bool)

(assert (=> b!1565425 m!1440379))

(declare-fun m!1440381 () Bool)

(assert (=> b!1565425 m!1440381))

(declare-fun m!1440383 () Bool)

(assert (=> b!1565425 m!1440383))

(declare-fun m!1440385 () Bool)

(assert (=> b!1565425 m!1440385))

(assert (=> b!1565425 m!1440377))

(assert (=> b!1565425 m!1440383))

(declare-fun m!1440387 () Bool)

(assert (=> b!1565425 m!1440387))

(declare-fun m!1440389 () Bool)

(assert (=> b!1565425 m!1440389))

(assert (=> b!1565425 m!1440379))

(declare-fun m!1440391 () Bool)

(assert (=> b!1565425 m!1440391))

(assert (=> b!1565425 m!1440387))

(assert (=> b!1565426 m!1440383))

(assert (=> b!1565426 m!1440383))

(declare-fun m!1440393 () Bool)

(assert (=> b!1565426 m!1440393))

(declare-fun m!1440395 () Bool)

(assert (=> b!1565427 m!1440395))

(declare-fun m!1440397 () Bool)

(assert (=> mapNonEmpty!59779 m!1440397))

(declare-fun m!1440399 () Bool)

(assert (=> start!133960 m!1440399))

(declare-fun m!1440401 () Bool)

(assert (=> start!133960 m!1440401))

(declare-fun m!1440403 () Bool)

(assert (=> start!133960 m!1440403))

(declare-fun m!1440405 () Bool)

(assert (=> b!1565431 m!1440405))

(check-sat b_and!51755 (not b_next!32151) (not b!1565431) (not mapNonEmpty!59779) (not b!1565426) tp_is_empty!38925 (not b!1565427) (not b_lambda!24975) (not start!133960) (not b!1565425))
(check-sat b_and!51755 (not b_next!32151))

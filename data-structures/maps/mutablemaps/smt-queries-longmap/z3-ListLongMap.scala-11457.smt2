; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133574 () Bool)

(assert start!133574)

(declare-fun b_free!31959 () Bool)

(declare-fun b_next!31959 () Bool)

(assert (=> start!133574 (= b_free!31959 (not b_next!31959))))

(declare-fun tp!113002 () Bool)

(declare-fun b_and!51439 () Bool)

(assert (=> start!133574 (= tp!113002 b_and!51439)))

(declare-fun b!1561054 () Bool)

(declare-fun res!1067479 () Bool)

(declare-fun e!869968 () Bool)

(assert (=> b!1561054 (=> (not res!1067479) (not e!869968))))

(declare-datatypes ((array!103921 0))(
  ( (array!103922 (arr!50148 (Array (_ BitVec 32) (_ BitVec 64))) (size!50699 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103921)

(declare-datatypes ((List!36576 0))(
  ( (Nil!36573) (Cons!36572 (h!38019 (_ BitVec 64)) (t!51332 List!36576)) )
))
(declare-fun arrayNoDuplicates!0 (array!103921 (_ BitVec 32) List!36576) Bool)

(assert (=> b!1561054 (= res!1067479 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36573))))

(declare-fun b!1561055 () Bool)

(assert (=> b!1561055 (= e!869968 (not true))))

(declare-datatypes ((V!59707 0))(
  ( (V!59708 (val!19396 Int)) )
))
(declare-datatypes ((tuple2!25198 0))(
  ( (tuple2!25199 (_1!12609 (_ BitVec 64)) (_2!12609 V!59707)) )
))
(declare-datatypes ((List!36577 0))(
  ( (Nil!36574) (Cons!36573 (h!38020 tuple2!25198) (t!51333 List!36577)) )
))
(declare-datatypes ((ListLongMap!22645 0))(
  ( (ListLongMap!22646 (toList!11338 List!36577)) )
))
(declare-fun lt!671053 () ListLongMap!22645)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671054 () V!59707)

(declare-fun contains!10258 (ListLongMap!22645 (_ BitVec 64)) Bool)

(declare-fun +!4993 (ListLongMap!22645 tuple2!25198) ListLongMap!22645)

(assert (=> b!1561055 (not (contains!10258 (+!4993 lt!671053 (tuple2!25199 (select (arr!50148 _keys!637) from!782) lt!671054)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51850 0))(
  ( (Unit!51851) )
))
(declare-fun lt!671055 () Unit!51850)

(declare-fun addStillNotContains!529 (ListLongMap!22645 (_ BitVec 64) V!59707 (_ BitVec 64)) Unit!51850)

(assert (=> b!1561055 (= lt!671055 (addStillNotContains!529 lt!671053 (select (arr!50148 _keys!637) from!782) lt!671054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18282 0))(
  ( (ValueCellFull!18282 (v!22145 V!59707)) (EmptyCell!18282) )
))
(declare-datatypes ((array!103923 0))(
  ( (array!103924 (arr!50149 (Array (_ BitVec 32) ValueCell!18282)) (size!50700 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103923)

(declare-fun get!26219 (ValueCell!18282 V!59707) V!59707)

(declare-fun dynLambda!3882 (Int (_ BitVec 64)) V!59707)

(assert (=> b!1561055 (= lt!671054 (get!26219 (select (arr!50149 _values!487) from!782) (dynLambda!3882 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59707)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun minValue!453 () V!59707)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6699 (array!103921 array!103923 (_ BitVec 32) (_ BitVec 32) V!59707 V!59707 (_ BitVec 32) Int) ListLongMap!22645)

(assert (=> b!1561055 (= lt!671053 (getCurrentListMapNoExtraKeys!6699 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561056 () Bool)

(declare-fun e!869972 () Bool)

(declare-fun e!869969 () Bool)

(declare-fun mapRes!59313 () Bool)

(assert (=> b!1561056 (= e!869972 (and e!869969 mapRes!59313))))

(declare-fun condMapEmpty!59313 () Bool)

(declare-fun mapDefault!59313 () ValueCell!18282)

(assert (=> b!1561056 (= condMapEmpty!59313 (= (arr!50149 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18282)) mapDefault!59313)))))

(declare-fun b!1561057 () Bool)

(declare-fun res!1067478 () Bool)

(assert (=> b!1561057 (=> (not res!1067478) (not e!869968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561057 (= res!1067478 (validKeyInArray!0 (select (arr!50148 _keys!637) from!782)))))

(declare-fun res!1067477 () Bool)

(assert (=> start!133574 (=> (not res!1067477) (not e!869968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133574 (= res!1067477 (validMask!0 mask!947))))

(assert (=> start!133574 e!869968))

(assert (=> start!133574 tp!113002))

(declare-fun tp_is_empty!38625 () Bool)

(assert (=> start!133574 tp_is_empty!38625))

(assert (=> start!133574 true))

(declare-fun array_inv!38911 (array!103921) Bool)

(assert (=> start!133574 (array_inv!38911 _keys!637)))

(declare-fun array_inv!38912 (array!103923) Bool)

(assert (=> start!133574 (and (array_inv!38912 _values!487) e!869972)))

(declare-fun mapIsEmpty!59313 () Bool)

(assert (=> mapIsEmpty!59313 mapRes!59313))

(declare-fun b!1561058 () Bool)

(declare-fun res!1067475 () Bool)

(assert (=> b!1561058 (=> (not res!1067475) (not e!869968))))

(assert (=> b!1561058 (= res!1067475 (and (= (size!50700 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50699 _keys!637) (size!50700 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561059 () Bool)

(declare-fun res!1067480 () Bool)

(assert (=> b!1561059 (=> (not res!1067480) (not e!869968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103921 (_ BitVec 32)) Bool)

(assert (=> b!1561059 (= res!1067480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561060 () Bool)

(assert (=> b!1561060 (= e!869969 tp_is_empty!38625)))

(declare-fun mapNonEmpty!59313 () Bool)

(declare-fun tp!113001 () Bool)

(declare-fun e!869971 () Bool)

(assert (=> mapNonEmpty!59313 (= mapRes!59313 (and tp!113001 e!869971))))

(declare-fun mapValue!59313 () ValueCell!18282)

(declare-fun mapKey!59313 () (_ BitVec 32))

(declare-fun mapRest!59313 () (Array (_ BitVec 32) ValueCell!18282))

(assert (=> mapNonEmpty!59313 (= (arr!50149 _values!487) (store mapRest!59313 mapKey!59313 mapValue!59313))))

(declare-fun b!1561061 () Bool)

(declare-fun res!1067476 () Bool)

(assert (=> b!1561061 (=> (not res!1067476) (not e!869968))))

(assert (=> b!1561061 (= res!1067476 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50699 _keys!637)) (bvslt from!782 (size!50699 _keys!637))))))

(declare-fun b!1561062 () Bool)

(assert (=> b!1561062 (= e!869971 tp_is_empty!38625)))

(assert (= (and start!133574 res!1067477) b!1561058))

(assert (= (and b!1561058 res!1067475) b!1561059))

(assert (= (and b!1561059 res!1067480) b!1561054))

(assert (= (and b!1561054 res!1067479) b!1561061))

(assert (= (and b!1561061 res!1067476) b!1561057))

(assert (= (and b!1561057 res!1067478) b!1561055))

(assert (= (and b!1561056 condMapEmpty!59313) mapIsEmpty!59313))

(assert (= (and b!1561056 (not condMapEmpty!59313)) mapNonEmpty!59313))

(get-info :version)

(assert (= (and mapNonEmpty!59313 ((_ is ValueCellFull!18282) mapValue!59313)) b!1561062))

(assert (= (and b!1561056 ((_ is ValueCellFull!18282) mapDefault!59313)) b!1561060))

(assert (= start!133574 b!1561056))

(declare-fun b_lambda!24843 () Bool)

(assert (=> (not b_lambda!24843) (not b!1561055)))

(declare-fun t!51331 () Bool)

(declare-fun tb!12511 () Bool)

(assert (=> (and start!133574 (= defaultEntry!495 defaultEntry!495) t!51331) tb!12511))

(declare-fun result!26295 () Bool)

(assert (=> tb!12511 (= result!26295 tp_is_empty!38625)))

(assert (=> b!1561055 t!51331))

(declare-fun b_and!51441 () Bool)

(assert (= b_and!51439 (and (=> t!51331 result!26295) b_and!51441)))

(declare-fun m!1436773 () Bool)

(assert (=> b!1561054 m!1436773))

(declare-fun m!1436775 () Bool)

(assert (=> mapNonEmpty!59313 m!1436775))

(declare-fun m!1436777 () Bool)

(assert (=> b!1561057 m!1436777))

(assert (=> b!1561057 m!1436777))

(declare-fun m!1436779 () Bool)

(assert (=> b!1561057 m!1436779))

(declare-fun m!1436781 () Bool)

(assert (=> start!133574 m!1436781))

(declare-fun m!1436783 () Bool)

(assert (=> start!133574 m!1436783))

(declare-fun m!1436785 () Bool)

(assert (=> start!133574 m!1436785))

(declare-fun m!1436787 () Bool)

(assert (=> b!1561055 m!1436787))

(declare-fun m!1436789 () Bool)

(assert (=> b!1561055 m!1436789))

(declare-fun m!1436791 () Bool)

(assert (=> b!1561055 m!1436791))

(assert (=> b!1561055 m!1436787))

(declare-fun m!1436793 () Bool)

(assert (=> b!1561055 m!1436793))

(assert (=> b!1561055 m!1436777))

(assert (=> b!1561055 m!1436793))

(declare-fun m!1436795 () Bool)

(assert (=> b!1561055 m!1436795))

(assert (=> b!1561055 m!1436789))

(assert (=> b!1561055 m!1436777))

(declare-fun m!1436797 () Bool)

(assert (=> b!1561055 m!1436797))

(declare-fun m!1436799 () Bool)

(assert (=> b!1561055 m!1436799))

(declare-fun m!1436801 () Bool)

(assert (=> b!1561059 m!1436801))

(check-sat (not b!1561055) (not b!1561054) (not b!1561057) b_and!51441 (not b!1561059) (not b_next!31959) (not b_lambda!24843) (not mapNonEmpty!59313) (not start!133574) tp_is_empty!38625)
(check-sat b_and!51441 (not b_next!31959))

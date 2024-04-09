; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84010 () Bool)

(assert start!84010)

(declare-fun b_free!19737 () Bool)

(declare-fun b_next!19737 () Bool)

(assert (=> start!84010 (= b_free!19737 (not b_next!19737))))

(declare-fun tp!68734 () Bool)

(declare-fun b_and!31575 () Bool)

(assert (=> start!84010 (= tp!68734 b_and!31575)))

(declare-fun b!981289 () Bool)

(declare-fun res!656773 () Bool)

(declare-fun e!553228 () Bool)

(assert (=> b!981289 (=> (not res!656773) (not e!553228))))

(declare-datatypes ((array!61563 0))(
  ( (array!61564 (arr!29635 (Array (_ BitVec 32) (_ BitVec 64))) (size!30115 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61563)

(declare-datatypes ((List!20665 0))(
  ( (Nil!20662) (Cons!20661 (h!21823 (_ BitVec 64)) (t!29360 List!20665)) )
))
(declare-fun arrayNoDuplicates!0 (array!61563 (_ BitVec 32) List!20665) Bool)

(assert (=> b!981289 (= res!656773 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20662))))

(declare-fun mapNonEmpty!36206 () Bool)

(declare-fun mapRes!36206 () Bool)

(declare-fun tp!68735 () Bool)

(declare-fun e!553230 () Bool)

(assert (=> mapNonEmpty!36206 (= mapRes!36206 (and tp!68735 e!553230))))

(declare-datatypes ((V!35363 0))(
  ( (V!35364 (val!11443 Int)) )
))
(declare-datatypes ((ValueCell!10911 0))(
  ( (ValueCellFull!10911 (v!14005 V!35363)) (EmptyCell!10911) )
))
(declare-datatypes ((array!61565 0))(
  ( (array!61566 (arr!29636 (Array (_ BitVec 32) ValueCell!10911)) (size!30116 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61565)

(declare-fun mapKey!36206 () (_ BitVec 32))

(declare-fun mapRest!36206 () (Array (_ BitVec 32) ValueCell!10911))

(declare-fun mapValue!36206 () ValueCell!10911)

(assert (=> mapNonEmpty!36206 (= (arr!29636 _values!1278) (store mapRest!36206 mapKey!36206 mapValue!36206))))

(declare-fun b!981290 () Bool)

(declare-fun e!553227 () Bool)

(declare-fun tp_is_empty!22785 () Bool)

(assert (=> b!981290 (= e!553227 tp_is_empty!22785)))

(declare-fun b!981291 () Bool)

(declare-fun e!553229 () Bool)

(assert (=> b!981291 (= e!553229 (and e!553227 mapRes!36206))))

(declare-fun condMapEmpty!36206 () Bool)

(declare-fun mapDefault!36206 () ValueCell!10911)

(assert (=> b!981291 (= condMapEmpty!36206 (= (arr!29636 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10911)) mapDefault!36206)))))

(declare-fun res!656768 () Bool)

(assert (=> start!84010 (=> (not res!656768) (not e!553228))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84010 (= res!656768 (validMask!0 mask!1948))))

(assert (=> start!84010 e!553228))

(assert (=> start!84010 true))

(assert (=> start!84010 tp_is_empty!22785))

(declare-fun array_inv!22795 (array!61565) Bool)

(assert (=> start!84010 (and (array_inv!22795 _values!1278) e!553229)))

(assert (=> start!84010 tp!68734))

(declare-fun array_inv!22796 (array!61563) Bool)

(assert (=> start!84010 (array_inv!22796 _keys!1544)))

(declare-fun b!981292 () Bool)

(declare-fun res!656775 () Bool)

(assert (=> b!981292 (=> (not res!656775) (not e!553228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61563 (_ BitVec 32)) Bool)

(assert (=> b!981292 (= res!656775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36206 () Bool)

(assert (=> mapIsEmpty!36206 mapRes!36206))

(declare-fun b!981293 () Bool)

(declare-fun e!553231 () Bool)

(assert (=> b!981293 (= e!553228 e!553231)))

(declare-fun res!656770 () Bool)

(assert (=> b!981293 (=> (not res!656770) (not e!553231))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981293 (= res!656770 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29635 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!435651 () V!35363)

(declare-fun get!15380 (ValueCell!10911 V!35363) V!35363)

(declare-fun dynLambda!1785 (Int (_ BitVec 64)) V!35363)

(assert (=> b!981293 (= lt!435651 (get!15380 (select (arr!29636 _values!1278) from!1932) (dynLambda!1785 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35363)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35363)

(declare-datatypes ((tuple2!14758 0))(
  ( (tuple2!14759 (_1!7389 (_ BitVec 64)) (_2!7389 V!35363)) )
))
(declare-datatypes ((List!20666 0))(
  ( (Nil!20663) (Cons!20662 (h!21824 tuple2!14758) (t!29361 List!20666)) )
))
(declare-datatypes ((ListLongMap!13469 0))(
  ( (ListLongMap!13470 (toList!6750 List!20666)) )
))
(declare-fun lt!435653 () ListLongMap!13469)

(declare-fun getCurrentListMapNoExtraKeys!3412 (array!61563 array!61565 (_ BitVec 32) (_ BitVec 32) V!35363 V!35363 (_ BitVec 32) Int) ListLongMap!13469)

(assert (=> b!981293 (= lt!435653 (getCurrentListMapNoExtraKeys!3412 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981294 () Bool)

(declare-fun res!656772 () Bool)

(assert (=> b!981294 (=> (not res!656772) (not e!553228))))

(assert (=> b!981294 (= res!656772 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981295 () Bool)

(assert (=> b!981295 (= e!553231 (not true))))

(declare-fun lt!435654 () tuple2!14758)

(declare-fun lt!435652 () tuple2!14758)

(declare-fun +!2954 (ListLongMap!13469 tuple2!14758) ListLongMap!13469)

(assert (=> b!981295 (= (+!2954 (+!2954 lt!435653 lt!435654) lt!435652) (+!2954 (+!2954 lt!435653 lt!435652) lt!435654))))

(assert (=> b!981295 (= lt!435652 (tuple2!14759 (select (arr!29635 _keys!1544) from!1932) lt!435651))))

(assert (=> b!981295 (= lt!435654 (tuple2!14759 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32583 0))(
  ( (Unit!32584) )
))
(declare-fun lt!435655 () Unit!32583)

(declare-fun addCommutativeForDiffKeys!616 (ListLongMap!13469 (_ BitVec 64) V!35363 (_ BitVec 64) V!35363) Unit!32583)

(assert (=> b!981295 (= lt!435655 (addCommutativeForDiffKeys!616 lt!435653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29635 _keys!1544) from!1932) lt!435651))))

(declare-fun b!981296 () Bool)

(declare-fun res!656771 () Bool)

(assert (=> b!981296 (=> (not res!656771) (not e!553228))))

(assert (=> b!981296 (= res!656771 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30115 _keys!1544))))))

(declare-fun b!981297 () Bool)

(declare-fun res!656769 () Bool)

(assert (=> b!981297 (=> (not res!656769) (not e!553228))))

(assert (=> b!981297 (= res!656769 (and (= (size!30116 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30115 _keys!1544) (size!30116 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981298 () Bool)

(assert (=> b!981298 (= e!553230 tp_is_empty!22785)))

(declare-fun b!981299 () Bool)

(declare-fun res!656774 () Bool)

(assert (=> b!981299 (=> (not res!656774) (not e!553228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981299 (= res!656774 (validKeyInArray!0 (select (arr!29635 _keys!1544) from!1932)))))

(assert (= (and start!84010 res!656768) b!981297))

(assert (= (and b!981297 res!656769) b!981292))

(assert (= (and b!981292 res!656775) b!981289))

(assert (= (and b!981289 res!656773) b!981296))

(assert (= (and b!981296 res!656771) b!981299))

(assert (= (and b!981299 res!656774) b!981294))

(assert (= (and b!981294 res!656772) b!981293))

(assert (= (and b!981293 res!656770) b!981295))

(assert (= (and b!981291 condMapEmpty!36206) mapIsEmpty!36206))

(assert (= (and b!981291 (not condMapEmpty!36206)) mapNonEmpty!36206))

(get-info :version)

(assert (= (and mapNonEmpty!36206 ((_ is ValueCellFull!10911) mapValue!36206)) b!981298))

(assert (= (and b!981291 ((_ is ValueCellFull!10911) mapDefault!36206)) b!981290))

(assert (= start!84010 b!981291))

(declare-fun b_lambda!14805 () Bool)

(assert (=> (not b_lambda!14805) (not b!981293)))

(declare-fun t!29359 () Bool)

(declare-fun tb!6545 () Bool)

(assert (=> (and start!84010 (= defaultEntry!1281 defaultEntry!1281) t!29359) tb!6545))

(declare-fun result!13071 () Bool)

(assert (=> tb!6545 (= result!13071 tp_is_empty!22785)))

(assert (=> b!981293 t!29359))

(declare-fun b_and!31577 () Bool)

(assert (= b_and!31575 (and (=> t!29359 result!13071) b_and!31577)))

(declare-fun m!908763 () Bool)

(assert (=> mapNonEmpty!36206 m!908763))

(declare-fun m!908765 () Bool)

(assert (=> b!981289 m!908765))

(declare-fun m!908767 () Bool)

(assert (=> b!981292 m!908767))

(declare-fun m!908769 () Bool)

(assert (=> b!981295 m!908769))

(declare-fun m!908771 () Bool)

(assert (=> b!981295 m!908771))

(declare-fun m!908773 () Bool)

(assert (=> b!981295 m!908773))

(assert (=> b!981295 m!908771))

(assert (=> b!981295 m!908769))

(declare-fun m!908775 () Bool)

(assert (=> b!981295 m!908775))

(declare-fun m!908777 () Bool)

(assert (=> b!981295 m!908777))

(assert (=> b!981295 m!908777))

(declare-fun m!908779 () Bool)

(assert (=> b!981295 m!908779))

(declare-fun m!908781 () Bool)

(assert (=> start!84010 m!908781))

(declare-fun m!908783 () Bool)

(assert (=> start!84010 m!908783))

(declare-fun m!908785 () Bool)

(assert (=> start!84010 m!908785))

(assert (=> b!981293 m!908769))

(declare-fun m!908787 () Bool)

(assert (=> b!981293 m!908787))

(declare-fun m!908789 () Bool)

(assert (=> b!981293 m!908789))

(declare-fun m!908791 () Bool)

(assert (=> b!981293 m!908791))

(assert (=> b!981293 m!908787))

(assert (=> b!981293 m!908791))

(declare-fun m!908793 () Bool)

(assert (=> b!981293 m!908793))

(assert (=> b!981299 m!908769))

(assert (=> b!981299 m!908769))

(declare-fun m!908795 () Bool)

(assert (=> b!981299 m!908795))

(check-sat (not mapNonEmpty!36206) (not b_lambda!14805) (not b_next!19737) (not b!981293) b_and!31577 tp_is_empty!22785 (not b!981299) (not start!84010) (not b!981292) (not b!981295) (not b!981289))
(check-sat b_and!31577 (not b_next!19737))

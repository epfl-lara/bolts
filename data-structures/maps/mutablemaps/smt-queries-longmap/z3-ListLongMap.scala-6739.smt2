; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84472 () Bool)

(assert start!84472)

(declare-fun b_free!19995 () Bool)

(declare-fun b_next!19995 () Bool)

(assert (=> start!84472 (= b_free!19995 (not b_next!19995))))

(declare-fun tp!69767 () Bool)

(declare-fun b_and!32075 () Bool)

(assert (=> start!84472 (= tp!69767 b_and!32075)))

(declare-fun b!987480 () Bool)

(declare-fun res!660712 () Bool)

(declare-fun e!556860 () Bool)

(assert (=> b!987480 (=> (not res!660712) (not e!556860))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62371 0))(
  ( (array!62372 (arr!30037 (Array (_ BitVec 32) (_ BitVec 64))) (size!30517 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62371)

(assert (=> b!987480 (= res!660712 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30517 _keys!1544))))))

(declare-fun b!987481 () Bool)

(declare-fun res!660716 () Bool)

(assert (=> b!987481 (=> (not res!660716) (not e!556860))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987481 (= res!660716 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987482 () Bool)

(declare-fun e!556856 () Bool)

(declare-fun e!556859 () Bool)

(declare-fun mapRes!36851 () Bool)

(assert (=> b!987482 (= e!556856 (and e!556859 mapRes!36851))))

(declare-fun condMapEmpty!36851 () Bool)

(declare-datatypes ((V!35931 0))(
  ( (V!35932 (val!11656 Int)) )
))
(declare-datatypes ((ValueCell!11124 0))(
  ( (ValueCellFull!11124 (v!14220 V!35931)) (EmptyCell!11124) )
))
(declare-datatypes ((array!62373 0))(
  ( (array!62374 (arr!30038 (Array (_ BitVec 32) ValueCell!11124)) (size!30518 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62373)

(declare-fun mapDefault!36851 () ValueCell!11124)

(assert (=> b!987482 (= condMapEmpty!36851 (= (arr!30038 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11124)) mapDefault!36851)))))

(declare-fun b!987483 () Bool)

(declare-fun res!660713 () Bool)

(assert (=> b!987483 (=> (not res!660713) (not e!556860))))

(declare-datatypes ((List!20898 0))(
  ( (Nil!20895) (Cons!20894 (h!22056 (_ BitVec 64)) (t!29829 List!20898)) )
))
(declare-fun arrayNoDuplicates!0 (array!62371 (_ BitVec 32) List!20898) Bool)

(assert (=> b!987483 (= res!660713 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20895))))

(declare-fun b!987484 () Bool)

(declare-fun e!556858 () Bool)

(assert (=> b!987484 (= e!556860 (not e!556858))))

(declare-fun res!660715 () Bool)

(assert (=> b!987484 (=> res!660715 e!556858)))

(assert (=> b!987484 (= res!660715 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30037 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14946 0))(
  ( (tuple2!14947 (_1!7483 (_ BitVec 64)) (_2!7483 V!35931)) )
))
(declare-datatypes ((List!20899 0))(
  ( (Nil!20896) (Cons!20895 (h!22057 tuple2!14946) (t!29830 List!20899)) )
))
(declare-datatypes ((ListLongMap!13657 0))(
  ( (ListLongMap!13658 (toList!6844 List!20899)) )
))
(declare-fun lt!437826 () ListLongMap!13657)

(declare-fun lt!437820 () ListLongMap!13657)

(declare-fun lt!437825 () tuple2!14946)

(declare-fun lt!437822 () tuple2!14946)

(declare-fun +!3032 (ListLongMap!13657 tuple2!14946) ListLongMap!13657)

(assert (=> b!987484 (= (+!3032 lt!437826 lt!437822) (+!3032 lt!437820 lt!437825))))

(declare-fun lt!437818 () ListLongMap!13657)

(assert (=> b!987484 (= lt!437820 (+!3032 lt!437818 lt!437822))))

(declare-fun lt!437827 () V!35931)

(assert (=> b!987484 (= lt!437822 (tuple2!14947 (select (arr!30037 _keys!1544) from!1932) lt!437827))))

(assert (=> b!987484 (= lt!437826 (+!3032 lt!437818 lt!437825))))

(declare-fun minValue!1220 () V!35931)

(assert (=> b!987484 (= lt!437825 (tuple2!14947 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32729 0))(
  ( (Unit!32730) )
))
(declare-fun lt!437824 () Unit!32729)

(declare-fun addCommutativeForDiffKeys!688 (ListLongMap!13657 (_ BitVec 64) V!35931 (_ BitVec 64) V!35931) Unit!32729)

(assert (=> b!987484 (= lt!437824 (addCommutativeForDiffKeys!688 lt!437818 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30037 _keys!1544) from!1932) lt!437827))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15601 (ValueCell!11124 V!35931) V!35931)

(declare-fun dynLambda!1862 (Int (_ BitVec 64)) V!35931)

(assert (=> b!987484 (= lt!437827 (get!15601 (select (arr!30038 _values!1278) from!1932) (dynLambda!1862 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!437828 () ListLongMap!13657)

(declare-fun lt!437823 () tuple2!14946)

(assert (=> b!987484 (= lt!437818 (+!3032 lt!437828 lt!437823))))

(declare-fun zeroValue!1220 () V!35931)

(assert (=> b!987484 (= lt!437823 (tuple2!14947 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3496 (array!62371 array!62373 (_ BitVec 32) (_ BitVec 32) V!35931 V!35931 (_ BitVec 32) Int) ListLongMap!13657)

(assert (=> b!987484 (= lt!437828 (getCurrentListMapNoExtraKeys!3496 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!987485 () Bool)

(declare-fun res!660718 () Bool)

(assert (=> b!987485 (=> (not res!660718) (not e!556860))))

(assert (=> b!987485 (= res!660718 (and (= (size!30518 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30517 _keys!1544) (size!30518 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!660717 () Bool)

(assert (=> start!84472 (=> (not res!660717) (not e!556860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84472 (= res!660717 (validMask!0 mask!1948))))

(assert (=> start!84472 e!556860))

(assert (=> start!84472 true))

(declare-fun tp_is_empty!23211 () Bool)

(assert (=> start!84472 tp_is_empty!23211))

(declare-fun array_inv!23067 (array!62373) Bool)

(assert (=> start!84472 (and (array_inv!23067 _values!1278) e!556856)))

(assert (=> start!84472 tp!69767))

(declare-fun array_inv!23068 (array!62371) Bool)

(assert (=> start!84472 (array_inv!23068 _keys!1544)))

(declare-fun b!987486 () Bool)

(assert (=> b!987486 (= e!556859 tp_is_empty!23211)))

(declare-fun b!987487 () Bool)

(assert (=> b!987487 (= e!556858 true)))

(declare-fun lt!437819 () ListLongMap!13657)

(declare-fun getCurrentListMap!3865 (array!62371 array!62373 (_ BitVec 32) (_ BitVec 32) V!35931 V!35931 (_ BitVec 32) Int) ListLongMap!13657)

(assert (=> b!987487 (= lt!437819 (getCurrentListMap!3865 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (=> b!987487 (= lt!437820 (+!3032 (+!3032 lt!437828 lt!437822) lt!437823))))

(declare-fun lt!437821 () Unit!32729)

(assert (=> b!987487 (= lt!437821 (addCommutativeForDiffKeys!688 lt!437828 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30037 _keys!1544) from!1932) lt!437827))))

(declare-fun b!987488 () Bool)

(declare-fun e!556855 () Bool)

(assert (=> b!987488 (= e!556855 tp_is_empty!23211)))

(declare-fun mapIsEmpty!36851 () Bool)

(assert (=> mapIsEmpty!36851 mapRes!36851))

(declare-fun mapNonEmpty!36851 () Bool)

(declare-fun tp!69766 () Bool)

(assert (=> mapNonEmpty!36851 (= mapRes!36851 (and tp!69766 e!556855))))

(declare-fun mapValue!36851 () ValueCell!11124)

(declare-fun mapKey!36851 () (_ BitVec 32))

(declare-fun mapRest!36851 () (Array (_ BitVec 32) ValueCell!11124))

(assert (=> mapNonEmpty!36851 (= (arr!30038 _values!1278) (store mapRest!36851 mapKey!36851 mapValue!36851))))

(declare-fun b!987489 () Bool)

(declare-fun res!660719 () Bool)

(assert (=> b!987489 (=> (not res!660719) (not e!556860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62371 (_ BitVec 32)) Bool)

(assert (=> b!987489 (= res!660719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987490 () Bool)

(declare-fun res!660714 () Bool)

(assert (=> b!987490 (=> (not res!660714) (not e!556860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987490 (= res!660714 (validKeyInArray!0 (select (arr!30037 _keys!1544) from!1932)))))

(assert (= (and start!84472 res!660717) b!987485))

(assert (= (and b!987485 res!660718) b!987489))

(assert (= (and b!987489 res!660719) b!987483))

(assert (= (and b!987483 res!660713) b!987480))

(assert (= (and b!987480 res!660712) b!987490))

(assert (= (and b!987490 res!660714) b!987481))

(assert (= (and b!987481 res!660716) b!987484))

(assert (= (and b!987484 (not res!660715)) b!987487))

(assert (= (and b!987482 condMapEmpty!36851) mapIsEmpty!36851))

(assert (= (and b!987482 (not condMapEmpty!36851)) mapNonEmpty!36851))

(get-info :version)

(assert (= (and mapNonEmpty!36851 ((_ is ValueCellFull!11124) mapValue!36851)) b!987488))

(assert (= (and b!987482 ((_ is ValueCellFull!11124) mapDefault!36851)) b!987486))

(assert (= start!84472 b!987482))

(declare-fun b_lambda!15057 () Bool)

(assert (=> (not b_lambda!15057) (not b!987484)))

(declare-fun t!29828 () Bool)

(declare-fun tb!6781 () Bool)

(assert (=> (and start!84472 (= defaultEntry!1281 defaultEntry!1281) t!29828) tb!6781))

(declare-fun result!13547 () Bool)

(assert (=> tb!6781 (= result!13547 tp_is_empty!23211)))

(assert (=> b!987484 t!29828))

(declare-fun b_and!32077 () Bool)

(assert (= b_and!32075 (and (=> t!29828 result!13547) b_and!32077)))

(declare-fun m!914227 () Bool)

(assert (=> b!987487 m!914227))

(declare-fun m!914229 () Bool)

(assert (=> b!987487 m!914229))

(assert (=> b!987487 m!914229))

(declare-fun m!914231 () Bool)

(assert (=> b!987487 m!914231))

(declare-fun m!914233 () Bool)

(assert (=> b!987487 m!914233))

(assert (=> b!987487 m!914227))

(declare-fun m!914235 () Bool)

(assert (=> b!987487 m!914235))

(declare-fun m!914237 () Bool)

(assert (=> mapNonEmpty!36851 m!914237))

(declare-fun m!914239 () Bool)

(assert (=> b!987489 m!914239))

(declare-fun m!914241 () Bool)

(assert (=> b!987483 m!914241))

(assert (=> b!987484 m!914229))

(declare-fun m!914243 () Bool)

(assert (=> b!987484 m!914243))

(declare-fun m!914245 () Bool)

(assert (=> b!987484 m!914245))

(declare-fun m!914247 () Bool)

(assert (=> b!987484 m!914247))

(assert (=> b!987484 m!914229))

(declare-fun m!914249 () Bool)

(assert (=> b!987484 m!914249))

(declare-fun m!914251 () Bool)

(assert (=> b!987484 m!914251))

(declare-fun m!914253 () Bool)

(assert (=> b!987484 m!914253))

(declare-fun m!914255 () Bool)

(assert (=> b!987484 m!914255))

(declare-fun m!914257 () Bool)

(assert (=> b!987484 m!914257))

(declare-fun m!914259 () Bool)

(assert (=> b!987484 m!914259))

(assert (=> b!987484 m!914243))

(assert (=> b!987484 m!914259))

(declare-fun m!914261 () Bool)

(assert (=> b!987484 m!914261))

(declare-fun m!914263 () Bool)

(assert (=> start!84472 m!914263))

(declare-fun m!914265 () Bool)

(assert (=> start!84472 m!914265))

(declare-fun m!914267 () Bool)

(assert (=> start!84472 m!914267))

(assert (=> b!987490 m!914229))

(assert (=> b!987490 m!914229))

(declare-fun m!914269 () Bool)

(assert (=> b!987490 m!914269))

(check-sat (not b!987484) (not b!987490) (not mapNonEmpty!36851) tp_is_empty!23211 (not b_next!19995) (not b!987483) (not start!84472) b_and!32077 (not b!987489) (not b!987487) (not b_lambda!15057))
(check-sat b_and!32077 (not b_next!19995))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112710 () Bool)

(assert start!112710)

(declare-fun b_free!31011 () Bool)

(declare-fun b_next!31011 () Bool)

(assert (=> start!112710 (= b_free!31011 (not b_next!31011))))

(declare-fun tp!108675 () Bool)

(declare-fun b_and!49969 () Bool)

(assert (=> start!112710 (= tp!108675 b_and!49969)))

(declare-fun mapIsEmpty!57059 () Bool)

(declare-fun mapRes!57059 () Bool)

(assert (=> mapIsEmpty!57059 mapRes!57059))

(declare-fun b!1336418 () Bool)

(declare-fun res!886984 () Bool)

(declare-fun e!761081 () Bool)

(assert (=> b!1336418 (=> (not res!886984) (not e!761081))))

(declare-datatypes ((V!54331 0))(
  ( (V!54332 (val!18535 Int)) )
))
(declare-datatypes ((ValueCell!17562 0))(
  ( (ValueCellFull!17562 (v!21173 V!54331)) (EmptyCell!17562) )
))
(declare-datatypes ((array!90675 0))(
  ( (array!90676 (arr!43798 (Array (_ BitVec 32) ValueCell!17562)) (size!44349 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90675)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90677 0))(
  ( (array!90678 (arr!43799 (Array (_ BitVec 32) (_ BitVec 64))) (size!44350 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90677)

(assert (=> b!1336418 (= res!886984 (and (= (size!44349 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44350 _keys!1590) (size!44349 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336419 () Bool)

(assert (=> b!1336419 (= e!761081 (not true))))

(declare-datatypes ((tuple2!24058 0))(
  ( (tuple2!24059 (_1!12039 (_ BitVec 64)) (_2!12039 V!54331)) )
))
(declare-datatypes ((List!31225 0))(
  ( (Nil!31222) (Cons!31221 (h!32430 tuple2!24058) (t!45524 List!31225)) )
))
(declare-datatypes ((ListLongMap!21727 0))(
  ( (ListLongMap!21728 (toList!10879 List!31225)) )
))
(declare-fun lt!592718 () ListLongMap!21727)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8980 (ListLongMap!21727 (_ BitVec 64)) Bool)

(assert (=> b!1336419 (contains!8980 lt!592718 k0!1153)))

(declare-datatypes ((Unit!43856 0))(
  ( (Unit!43857) )
))
(declare-fun lt!592719 () Unit!43856)

(declare-fun minValue!1262 () V!54331)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!312 ((_ BitVec 64) (_ BitVec 64) V!54331 ListLongMap!21727) Unit!43856)

(assert (=> b!1336419 (= lt!592719 (lemmaInListMapAfterAddingDiffThenInBefore!312 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592718))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!54331)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun +!4711 (ListLongMap!21727 tuple2!24058) ListLongMap!21727)

(declare-fun getCurrentListMapNoExtraKeys!6434 (array!90677 array!90675 (_ BitVec 32) (_ BitVec 32) V!54331 V!54331 (_ BitVec 32) Int) ListLongMap!21727)

(declare-fun get!22136 (ValueCell!17562 V!54331) V!54331)

(declare-fun dynLambda!3748 (Int (_ BitVec 64)) V!54331)

(assert (=> b!1336419 (= lt!592718 (+!4711 (getCurrentListMapNoExtraKeys!6434 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24059 (select (arr!43799 _keys!1590) from!1980) (get!22136 (select (arr!43798 _values!1320) from!1980) (dynLambda!3748 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336420 () Bool)

(declare-fun res!886990 () Bool)

(assert (=> b!1336420 (=> (not res!886990) (not e!761081))))

(assert (=> b!1336420 (= res!886990 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336421 () Bool)

(declare-fun e!761082 () Bool)

(declare-fun tp_is_empty!36921 () Bool)

(assert (=> b!1336421 (= e!761082 tp_is_empty!36921)))

(declare-fun b!1336422 () Bool)

(declare-fun e!761079 () Bool)

(declare-fun e!761080 () Bool)

(assert (=> b!1336422 (= e!761079 (and e!761080 mapRes!57059))))

(declare-fun condMapEmpty!57059 () Bool)

(declare-fun mapDefault!57059 () ValueCell!17562)

(assert (=> b!1336422 (= condMapEmpty!57059 (= (arr!43798 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17562)) mapDefault!57059)))))

(declare-fun b!1336423 () Bool)

(declare-fun res!886988 () Bool)

(assert (=> b!1336423 (=> (not res!886988) (not e!761081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90677 (_ BitVec 32)) Bool)

(assert (=> b!1336423 (= res!886988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336424 () Bool)

(declare-fun res!886985 () Bool)

(assert (=> b!1336424 (=> (not res!886985) (not e!761081))))

(assert (=> b!1336424 (= res!886985 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44350 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336425 () Bool)

(assert (=> b!1336425 (= e!761080 tp_is_empty!36921)))

(declare-fun b!1336426 () Bool)

(declare-fun res!886983 () Bool)

(assert (=> b!1336426 (=> (not res!886983) (not e!761081))))

(assert (=> b!1336426 (= res!886983 (not (= (select (arr!43799 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1336427 () Bool)

(declare-fun res!886986 () Bool)

(assert (=> b!1336427 (=> (not res!886986) (not e!761081))))

(declare-fun getCurrentListMap!5787 (array!90677 array!90675 (_ BitVec 32) (_ BitVec 32) V!54331 V!54331 (_ BitVec 32) Int) ListLongMap!21727)

(assert (=> b!1336427 (= res!886986 (contains!8980 (getCurrentListMap!5787 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1336428 () Bool)

(declare-fun res!886987 () Bool)

(assert (=> b!1336428 (=> (not res!886987) (not e!761081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336428 (= res!886987 (validKeyInArray!0 (select (arr!43799 _keys!1590) from!1980)))))

(declare-fun res!886989 () Bool)

(assert (=> start!112710 (=> (not res!886989) (not e!761081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112710 (= res!886989 (validMask!0 mask!1998))))

(assert (=> start!112710 e!761081))

(declare-fun array_inv!32963 (array!90675) Bool)

(assert (=> start!112710 (and (array_inv!32963 _values!1320) e!761079)))

(assert (=> start!112710 true))

(declare-fun array_inv!32964 (array!90677) Bool)

(assert (=> start!112710 (array_inv!32964 _keys!1590)))

(assert (=> start!112710 tp!108675))

(assert (=> start!112710 tp_is_empty!36921))

(declare-fun mapNonEmpty!57059 () Bool)

(declare-fun tp!108674 () Bool)

(assert (=> mapNonEmpty!57059 (= mapRes!57059 (and tp!108674 e!761082))))

(declare-fun mapValue!57059 () ValueCell!17562)

(declare-fun mapKey!57059 () (_ BitVec 32))

(declare-fun mapRest!57059 () (Array (_ BitVec 32) ValueCell!17562))

(assert (=> mapNonEmpty!57059 (= (arr!43798 _values!1320) (store mapRest!57059 mapKey!57059 mapValue!57059))))

(declare-fun b!1336429 () Bool)

(declare-fun res!886982 () Bool)

(assert (=> b!1336429 (=> (not res!886982) (not e!761081))))

(declare-datatypes ((List!31226 0))(
  ( (Nil!31223) (Cons!31222 (h!32431 (_ BitVec 64)) (t!45525 List!31226)) )
))
(declare-fun arrayNoDuplicates!0 (array!90677 (_ BitVec 32) List!31226) Bool)

(assert (=> b!1336429 (= res!886982 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31223))))

(assert (= (and start!112710 res!886989) b!1336418))

(assert (= (and b!1336418 res!886984) b!1336423))

(assert (= (and b!1336423 res!886988) b!1336429))

(assert (= (and b!1336429 res!886982) b!1336424))

(assert (= (and b!1336424 res!886985) b!1336427))

(assert (= (and b!1336427 res!886986) b!1336426))

(assert (= (and b!1336426 res!886983) b!1336428))

(assert (= (and b!1336428 res!886987) b!1336420))

(assert (= (and b!1336420 res!886990) b!1336419))

(assert (= (and b!1336422 condMapEmpty!57059) mapIsEmpty!57059))

(assert (= (and b!1336422 (not condMapEmpty!57059)) mapNonEmpty!57059))

(get-info :version)

(assert (= (and mapNonEmpty!57059 ((_ is ValueCellFull!17562) mapValue!57059)) b!1336421))

(assert (= (and b!1336422 ((_ is ValueCellFull!17562) mapDefault!57059)) b!1336425))

(assert (= start!112710 b!1336422))

(declare-fun b_lambda!24179 () Bool)

(assert (=> (not b_lambda!24179) (not b!1336419)))

(declare-fun t!45523 () Bool)

(declare-fun tb!12103 () Bool)

(assert (=> (and start!112710 (= defaultEntry!1323 defaultEntry!1323) t!45523) tb!12103))

(declare-fun result!25271 () Bool)

(assert (=> tb!12103 (= result!25271 tp_is_empty!36921)))

(assert (=> b!1336419 t!45523))

(declare-fun b_and!49971 () Bool)

(assert (= b_and!49969 (and (=> t!45523 result!25271) b_and!49971)))

(declare-fun m!1224539 () Bool)

(assert (=> b!1336428 m!1224539))

(assert (=> b!1336428 m!1224539))

(declare-fun m!1224541 () Bool)

(assert (=> b!1336428 m!1224541))

(declare-fun m!1224543 () Bool)

(assert (=> mapNonEmpty!57059 m!1224543))

(declare-fun m!1224545 () Bool)

(assert (=> b!1336427 m!1224545))

(assert (=> b!1336427 m!1224545))

(declare-fun m!1224547 () Bool)

(assert (=> b!1336427 m!1224547))

(assert (=> b!1336426 m!1224539))

(declare-fun m!1224549 () Bool)

(assert (=> b!1336429 m!1224549))

(declare-fun m!1224551 () Bool)

(assert (=> start!112710 m!1224551))

(declare-fun m!1224553 () Bool)

(assert (=> start!112710 m!1224553))

(declare-fun m!1224555 () Bool)

(assert (=> start!112710 m!1224555))

(declare-fun m!1224557 () Bool)

(assert (=> b!1336419 m!1224557))

(declare-fun m!1224559 () Bool)

(assert (=> b!1336419 m!1224559))

(declare-fun m!1224561 () Bool)

(assert (=> b!1336419 m!1224561))

(declare-fun m!1224563 () Bool)

(assert (=> b!1336419 m!1224563))

(declare-fun m!1224565 () Bool)

(assert (=> b!1336419 m!1224565))

(assert (=> b!1336419 m!1224559))

(declare-fun m!1224567 () Bool)

(assert (=> b!1336419 m!1224567))

(assert (=> b!1336419 m!1224561))

(declare-fun m!1224569 () Bool)

(assert (=> b!1336419 m!1224569))

(assert (=> b!1336419 m!1224565))

(assert (=> b!1336419 m!1224539))

(declare-fun m!1224571 () Bool)

(assert (=> b!1336423 m!1224571))

(check-sat (not b!1336423) (not mapNonEmpty!57059) (not b!1336419) (not start!112710) (not b!1336429) (not b!1336427) (not b_next!31011) (not b_lambda!24179) tp_is_empty!36921 (not b!1336428) b_and!49971)
(check-sat b_and!49971 (not b_next!31011))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112616 () Bool)

(assert start!112616)

(declare-fun b_free!30975 () Bool)

(declare-fun b_next!30975 () Bool)

(assert (=> start!112616 (= b_free!30975 (not b_next!30975))))

(declare-fun tp!108563 () Bool)

(declare-fun b_and!49893 () Bool)

(assert (=> start!112616 (= tp!108563 b_and!49893)))

(declare-fun b!1335360 () Bool)

(declare-fun res!886336 () Bool)

(declare-fun e!760569 () Bool)

(assert (=> b!1335360 (=> (not res!886336) (not e!760569))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1335360 (= res!886336 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1335361 () Bool)

(assert (=> b!1335361 (= e!760569 false)))

(declare-datatypes ((V!54283 0))(
  ( (V!54284 (val!18517 Int)) )
))
(declare-datatypes ((ValueCell!17544 0))(
  ( (ValueCellFull!17544 (v!21152 V!54283)) (EmptyCell!17544) )
))
(declare-datatypes ((array!90607 0))(
  ( (array!90608 (arr!43765 (Array (_ BitVec 32) ValueCell!17544)) (size!44316 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90607)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((array!90609 0))(
  ( (array!90610 (arr!43766 (Array (_ BitVec 32) (_ BitVec 64))) (size!44317 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90609)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!24032 0))(
  ( (tuple2!24033 (_1!12026 (_ BitVec 64)) (_2!12026 V!54283)) )
))
(declare-datatypes ((List!31203 0))(
  ( (Nil!31200) (Cons!31199 (h!32408 tuple2!24032) (t!45474 List!31203)) )
))
(declare-datatypes ((ListLongMap!21701 0))(
  ( (ListLongMap!21702 (toList!10866 List!31203)) )
))
(declare-fun lt!592391 () ListLongMap!21701)

(declare-fun minValue!1262 () V!54283)

(declare-fun zeroValue!1262 () V!54283)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6422 (array!90609 array!90607 (_ BitVec 32) (_ BitVec 32) V!54283 V!54283 (_ BitVec 32) Int) ListLongMap!21701)

(assert (=> b!1335361 (= lt!592391 (getCurrentListMapNoExtraKeys!6422 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1335362 () Bool)

(declare-fun e!760566 () Bool)

(declare-fun tp_is_empty!36885 () Bool)

(assert (=> b!1335362 (= e!760566 tp_is_empty!36885)))

(declare-fun b!1335364 () Bool)

(declare-fun res!886339 () Bool)

(assert (=> b!1335364 (=> (not res!886339) (not e!760569))))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1335364 (= res!886339 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44317 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335365 () Bool)

(declare-fun res!886335 () Bool)

(assert (=> b!1335365 (=> (not res!886335) (not e!760569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90609 (_ BitVec 32)) Bool)

(assert (=> b!1335365 (= res!886335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335366 () Bool)

(declare-fun e!760568 () Bool)

(assert (=> b!1335366 (= e!760568 tp_is_empty!36885)))

(declare-fun b!1335367 () Bool)

(declare-fun res!886343 () Bool)

(assert (=> b!1335367 (=> (not res!886343) (not e!760569))))

(assert (=> b!1335367 (= res!886343 (and (= (size!44316 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44317 _keys!1590) (size!44316 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335368 () Bool)

(declare-fun res!886340 () Bool)

(assert (=> b!1335368 (=> (not res!886340) (not e!760569))))

(declare-datatypes ((List!31204 0))(
  ( (Nil!31201) (Cons!31200 (h!32409 (_ BitVec 64)) (t!45475 List!31204)) )
))
(declare-fun arrayNoDuplicates!0 (array!90609 (_ BitVec 32) List!31204) Bool)

(assert (=> b!1335368 (= res!886340 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31201))))

(declare-fun mapNonEmpty!57001 () Bool)

(declare-fun mapRes!57001 () Bool)

(declare-fun tp!108562 () Bool)

(assert (=> mapNonEmpty!57001 (= mapRes!57001 (and tp!108562 e!760566))))

(declare-fun mapKey!57001 () (_ BitVec 32))

(declare-fun mapRest!57001 () (Array (_ BitVec 32) ValueCell!17544))

(declare-fun mapValue!57001 () ValueCell!17544)

(assert (=> mapNonEmpty!57001 (= (arr!43765 _values!1320) (store mapRest!57001 mapKey!57001 mapValue!57001))))

(declare-fun res!886341 () Bool)

(assert (=> start!112616 (=> (not res!886341) (not e!760569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112616 (= res!886341 (validMask!0 mask!1998))))

(assert (=> start!112616 e!760569))

(declare-fun e!760567 () Bool)

(declare-fun array_inv!32941 (array!90607) Bool)

(assert (=> start!112616 (and (array_inv!32941 _values!1320) e!760567)))

(assert (=> start!112616 true))

(declare-fun array_inv!32942 (array!90609) Bool)

(assert (=> start!112616 (array_inv!32942 _keys!1590)))

(assert (=> start!112616 tp!108563))

(assert (=> start!112616 tp_is_empty!36885))

(declare-fun b!1335363 () Bool)

(declare-fun res!886337 () Bool)

(assert (=> b!1335363 (=> (not res!886337) (not e!760569))))

(declare-fun contains!8966 (ListLongMap!21701 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5777 (array!90609 array!90607 (_ BitVec 32) (_ BitVec 32) V!54283 V!54283 (_ BitVec 32) Int) ListLongMap!21701)

(assert (=> b!1335363 (= res!886337 (contains!8966 (getCurrentListMap!5777 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1335369 () Bool)

(declare-fun res!886342 () Bool)

(assert (=> b!1335369 (=> (not res!886342) (not e!760569))))

(assert (=> b!1335369 (= res!886342 (not (= (select (arr!43766 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1335370 () Bool)

(assert (=> b!1335370 (= e!760567 (and e!760568 mapRes!57001))))

(declare-fun condMapEmpty!57001 () Bool)

(declare-fun mapDefault!57001 () ValueCell!17544)

(assert (=> b!1335370 (= condMapEmpty!57001 (= (arr!43765 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17544)) mapDefault!57001)))))

(declare-fun b!1335371 () Bool)

(declare-fun res!886338 () Bool)

(assert (=> b!1335371 (=> (not res!886338) (not e!760569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335371 (= res!886338 (validKeyInArray!0 (select (arr!43766 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!57001 () Bool)

(assert (=> mapIsEmpty!57001 mapRes!57001))

(assert (= (and start!112616 res!886341) b!1335367))

(assert (= (and b!1335367 res!886343) b!1335365))

(assert (= (and b!1335365 res!886335) b!1335368))

(assert (= (and b!1335368 res!886340) b!1335364))

(assert (= (and b!1335364 res!886339) b!1335363))

(assert (= (and b!1335363 res!886337) b!1335369))

(assert (= (and b!1335369 res!886342) b!1335371))

(assert (= (and b!1335371 res!886338) b!1335360))

(assert (= (and b!1335360 res!886336) b!1335361))

(assert (= (and b!1335370 condMapEmpty!57001) mapIsEmpty!57001))

(assert (= (and b!1335370 (not condMapEmpty!57001)) mapNonEmpty!57001))

(get-info :version)

(assert (= (and mapNonEmpty!57001 ((_ is ValueCellFull!17544) mapValue!57001)) b!1335362))

(assert (= (and b!1335370 ((_ is ValueCellFull!17544) mapDefault!57001)) b!1335366))

(assert (= start!112616 b!1335370))

(declare-fun m!1223449 () Bool)

(assert (=> b!1335369 m!1223449))

(declare-fun m!1223451 () Bool)

(assert (=> b!1335368 m!1223451))

(declare-fun m!1223453 () Bool)

(assert (=> b!1335363 m!1223453))

(assert (=> b!1335363 m!1223453))

(declare-fun m!1223455 () Bool)

(assert (=> b!1335363 m!1223455))

(assert (=> b!1335371 m!1223449))

(assert (=> b!1335371 m!1223449))

(declare-fun m!1223457 () Bool)

(assert (=> b!1335371 m!1223457))

(declare-fun m!1223459 () Bool)

(assert (=> b!1335361 m!1223459))

(declare-fun m!1223461 () Bool)

(assert (=> b!1335365 m!1223461))

(declare-fun m!1223463 () Bool)

(assert (=> start!112616 m!1223463))

(declare-fun m!1223465 () Bool)

(assert (=> start!112616 m!1223465))

(declare-fun m!1223467 () Bool)

(assert (=> start!112616 m!1223467))

(declare-fun m!1223469 () Bool)

(assert (=> mapNonEmpty!57001 m!1223469))

(check-sat (not mapNonEmpty!57001) (not b!1335368) (not b_next!30975) (not b!1335361) tp_is_empty!36885 (not start!112616) (not b!1335363) (not b!1335371) b_and!49893 (not b!1335365))
(check-sat b_and!49893 (not b_next!30975))

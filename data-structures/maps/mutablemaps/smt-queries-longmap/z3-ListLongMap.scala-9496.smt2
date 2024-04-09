; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112622 () Bool)

(assert start!112622)

(declare-fun b_free!30981 () Bool)

(declare-fun b_next!30981 () Bool)

(assert (=> start!112622 (= b_free!30981 (not b_next!30981))))

(declare-fun tp!108580 () Bool)

(declare-fun b_and!49899 () Bool)

(assert (=> start!112622 (= tp!108580 b_and!49899)))

(declare-fun b!1335468 () Bool)

(declare-fun e!760612 () Bool)

(declare-fun tp_is_empty!36891 () Bool)

(assert (=> b!1335468 (= e!760612 tp_is_empty!36891)))

(declare-fun b!1335469 () Bool)

(declare-fun e!760615 () Bool)

(declare-fun mapRes!57010 () Bool)

(assert (=> b!1335469 (= e!760615 (and e!760612 mapRes!57010))))

(declare-fun condMapEmpty!57010 () Bool)

(declare-datatypes ((V!54291 0))(
  ( (V!54292 (val!18520 Int)) )
))
(declare-datatypes ((ValueCell!17547 0))(
  ( (ValueCellFull!17547 (v!21155 V!54291)) (EmptyCell!17547) )
))
(declare-datatypes ((array!90619 0))(
  ( (array!90620 (arr!43771 (Array (_ BitVec 32) ValueCell!17547)) (size!44322 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90619)

(declare-fun mapDefault!57010 () ValueCell!17547)

(assert (=> b!1335469 (= condMapEmpty!57010 (= (arr!43771 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17547)) mapDefault!57010)))))

(declare-fun b!1335470 () Bool)

(declare-fun res!886419 () Bool)

(declare-fun e!760611 () Bool)

(assert (=> b!1335470 (=> (not res!886419) (not e!760611))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90621 0))(
  ( (array!90622 (arr!43772 (Array (_ BitVec 32) (_ BitVec 64))) (size!44323 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90621)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1335470 (= res!886419 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44323 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335471 () Bool)

(declare-fun res!886416 () Bool)

(assert (=> b!1335471 (=> (not res!886416) (not e!760611))))

(declare-datatypes ((List!31207 0))(
  ( (Nil!31204) (Cons!31203 (h!32412 (_ BitVec 64)) (t!45478 List!31207)) )
))
(declare-fun arrayNoDuplicates!0 (array!90621 (_ BitVec 32) List!31207) Bool)

(assert (=> b!1335471 (= res!886416 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31204))))

(declare-fun b!1335472 () Bool)

(declare-fun res!886423 () Bool)

(assert (=> b!1335472 (=> (not res!886423) (not e!760611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335472 (= res!886423 (validKeyInArray!0 (select (arr!43772 _keys!1590) from!1980)))))

(declare-fun b!1335473 () Bool)

(declare-fun res!886421 () Bool)

(assert (=> b!1335473 (=> (not res!886421) (not e!760611))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!54291)

(declare-fun minValue!1262 () V!54291)

(declare-datatypes ((tuple2!24038 0))(
  ( (tuple2!24039 (_1!12029 (_ BitVec 64)) (_2!12029 V!54291)) )
))
(declare-datatypes ((List!31208 0))(
  ( (Nil!31205) (Cons!31204 (h!32413 tuple2!24038) (t!45479 List!31208)) )
))
(declare-datatypes ((ListLongMap!21707 0))(
  ( (ListLongMap!21708 (toList!10869 List!31208)) )
))
(declare-fun contains!8968 (ListLongMap!21707 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5779 (array!90621 array!90619 (_ BitVec 32) (_ BitVec 32) V!54291 V!54291 (_ BitVec 32) Int) ListLongMap!21707)

(assert (=> b!1335473 (= res!886421 (contains!8968 (getCurrentListMap!5779 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!57010 () Bool)

(declare-fun tp!108581 () Bool)

(declare-fun e!760614 () Bool)

(assert (=> mapNonEmpty!57010 (= mapRes!57010 (and tp!108581 e!760614))))

(declare-fun mapKey!57010 () (_ BitVec 32))

(declare-fun mapRest!57010 () (Array (_ BitVec 32) ValueCell!17547))

(declare-fun mapValue!57010 () ValueCell!17547)

(assert (=> mapNonEmpty!57010 (= (arr!43771 _values!1320) (store mapRest!57010 mapKey!57010 mapValue!57010))))

(declare-fun b!1335474 () Bool)

(declare-fun res!886424 () Bool)

(assert (=> b!1335474 (=> (not res!886424) (not e!760611))))

(assert (=> b!1335474 (= res!886424 (and (= (size!44322 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44323 _keys!1590) (size!44322 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335475 () Bool)

(declare-fun res!886420 () Bool)

(assert (=> b!1335475 (=> (not res!886420) (not e!760611))))

(assert (=> b!1335475 (= res!886420 (not (= (select (arr!43772 _keys!1590) from!1980) k0!1153)))))

(declare-fun res!886422 () Bool)

(assert (=> start!112622 (=> (not res!886422) (not e!760611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112622 (= res!886422 (validMask!0 mask!1998))))

(assert (=> start!112622 e!760611))

(declare-fun array_inv!32945 (array!90619) Bool)

(assert (=> start!112622 (and (array_inv!32945 _values!1320) e!760615)))

(assert (=> start!112622 true))

(declare-fun array_inv!32946 (array!90621) Bool)

(assert (=> start!112622 (array_inv!32946 _keys!1590)))

(assert (=> start!112622 tp!108580))

(assert (=> start!112622 tp_is_empty!36891))

(declare-fun b!1335476 () Bool)

(declare-fun res!886418 () Bool)

(assert (=> b!1335476 (=> (not res!886418) (not e!760611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90621 (_ BitVec 32)) Bool)

(assert (=> b!1335476 (= res!886418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335477 () Bool)

(assert (=> b!1335477 (= e!760614 tp_is_empty!36891)))

(declare-fun mapIsEmpty!57010 () Bool)

(assert (=> mapIsEmpty!57010 mapRes!57010))

(declare-fun b!1335478 () Bool)

(assert (=> b!1335478 (= e!760611 (bvsge from!1980 (size!44322 _values!1320)))))

(declare-fun lt!592400 () ListLongMap!21707)

(declare-fun getCurrentListMapNoExtraKeys!6424 (array!90621 array!90619 (_ BitVec 32) (_ BitVec 32) V!54291 V!54291 (_ BitVec 32) Int) ListLongMap!21707)

(assert (=> b!1335478 (= lt!592400 (getCurrentListMapNoExtraKeys!6424 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1335479 () Bool)

(declare-fun res!886417 () Bool)

(assert (=> b!1335479 (=> (not res!886417) (not e!760611))))

(assert (=> b!1335479 (= res!886417 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!112622 res!886422) b!1335474))

(assert (= (and b!1335474 res!886424) b!1335476))

(assert (= (and b!1335476 res!886418) b!1335471))

(assert (= (and b!1335471 res!886416) b!1335470))

(assert (= (and b!1335470 res!886419) b!1335473))

(assert (= (and b!1335473 res!886421) b!1335475))

(assert (= (and b!1335475 res!886420) b!1335472))

(assert (= (and b!1335472 res!886423) b!1335479))

(assert (= (and b!1335479 res!886417) b!1335478))

(assert (= (and b!1335469 condMapEmpty!57010) mapIsEmpty!57010))

(assert (= (and b!1335469 (not condMapEmpty!57010)) mapNonEmpty!57010))

(get-info :version)

(assert (= (and mapNonEmpty!57010 ((_ is ValueCellFull!17547) mapValue!57010)) b!1335477))

(assert (= (and b!1335469 ((_ is ValueCellFull!17547) mapDefault!57010)) b!1335468))

(assert (= start!112622 b!1335469))

(declare-fun m!1223515 () Bool)

(assert (=> b!1335472 m!1223515))

(assert (=> b!1335472 m!1223515))

(declare-fun m!1223517 () Bool)

(assert (=> b!1335472 m!1223517))

(declare-fun m!1223519 () Bool)

(assert (=> b!1335473 m!1223519))

(assert (=> b!1335473 m!1223519))

(declare-fun m!1223521 () Bool)

(assert (=> b!1335473 m!1223521))

(declare-fun m!1223523 () Bool)

(assert (=> b!1335471 m!1223523))

(declare-fun m!1223525 () Bool)

(assert (=> b!1335476 m!1223525))

(assert (=> b!1335475 m!1223515))

(declare-fun m!1223527 () Bool)

(assert (=> mapNonEmpty!57010 m!1223527))

(declare-fun m!1223529 () Bool)

(assert (=> b!1335478 m!1223529))

(declare-fun m!1223531 () Bool)

(assert (=> start!112622 m!1223531))

(declare-fun m!1223533 () Bool)

(assert (=> start!112622 m!1223533))

(declare-fun m!1223535 () Bool)

(assert (=> start!112622 m!1223535))

(check-sat b_and!49899 (not b!1335471) (not b!1335473) (not start!112622) tp_is_empty!36891 (not b!1335472) (not mapNonEmpty!57010) (not b_next!30981) (not b!1335478) (not b!1335476))
(check-sat b_and!49899 (not b_next!30981))

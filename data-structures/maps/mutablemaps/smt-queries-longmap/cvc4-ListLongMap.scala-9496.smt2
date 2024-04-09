; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112624 () Bool)

(assert start!112624)

(declare-fun b_free!30983 () Bool)

(declare-fun b_next!30983 () Bool)

(assert (=> start!112624 (= b_free!30983 (not b_next!30983))))

(declare-fun tp!108586 () Bool)

(declare-fun b_and!49901 () Bool)

(assert (=> start!112624 (= tp!108586 b_and!49901)))

(declare-fun b!1335504 () Bool)

(declare-fun res!886450 () Bool)

(declare-fun e!760627 () Bool)

(assert (=> b!1335504 (=> (not res!886450) (not e!760627))))

(declare-datatypes ((V!54293 0))(
  ( (V!54294 (val!18521 Int)) )
))
(declare-datatypes ((ValueCell!17548 0))(
  ( (ValueCellFull!17548 (v!21156 V!54293)) (EmptyCell!17548) )
))
(declare-datatypes ((array!90623 0))(
  ( (array!90624 (arr!43773 (Array (_ BitVec 32) ValueCell!17548)) (size!44324 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90623)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90625 0))(
  ( (array!90626 (arr!43774 (Array (_ BitVec 32) (_ BitVec 64))) (size!44325 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90625)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54293)

(declare-fun zeroValue!1262 () V!54293)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((tuple2!24040 0))(
  ( (tuple2!24041 (_1!12030 (_ BitVec 64)) (_2!12030 V!54293)) )
))
(declare-datatypes ((List!31209 0))(
  ( (Nil!31206) (Cons!31205 (h!32414 tuple2!24040) (t!45480 List!31209)) )
))
(declare-datatypes ((ListLongMap!21709 0))(
  ( (ListLongMap!21710 (toList!10870 List!31209)) )
))
(declare-fun contains!8969 (ListLongMap!21709 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5780 (array!90625 array!90623 (_ BitVec 32) (_ BitVec 32) V!54293 V!54293 (_ BitVec 32) Int) ListLongMap!21709)

(assert (=> b!1335504 (= res!886450 (contains!8969 (getCurrentListMap!5780 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!57013 () Bool)

(declare-fun mapRes!57013 () Bool)

(assert (=> mapIsEmpty!57013 mapRes!57013))

(declare-fun b!1335505 () Bool)

(declare-fun res!886443 () Bool)

(assert (=> b!1335505 (=> (not res!886443) (not e!760627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335505 (= res!886443 (validKeyInArray!0 (select (arr!43774 _keys!1590) from!1980)))))

(declare-fun b!1335506 () Bool)

(declare-fun res!886449 () Bool)

(assert (=> b!1335506 (=> (not res!886449) (not e!760627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90625 (_ BitVec 32)) Bool)

(assert (=> b!1335506 (= res!886449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335507 () Bool)

(declare-fun res!886448 () Bool)

(assert (=> b!1335507 (=> (not res!886448) (not e!760627))))

(assert (=> b!1335507 (= res!886448 (not (= (select (arr!43774 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1335508 () Bool)

(declare-fun res!886445 () Bool)

(assert (=> b!1335508 (=> (not res!886445) (not e!760627))))

(declare-datatypes ((List!31210 0))(
  ( (Nil!31207) (Cons!31206 (h!32415 (_ BitVec 64)) (t!45481 List!31210)) )
))
(declare-fun arrayNoDuplicates!0 (array!90625 (_ BitVec 32) List!31210) Bool)

(assert (=> b!1335508 (= res!886445 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31207))))

(declare-fun b!1335509 () Bool)

(declare-fun res!886444 () Bool)

(assert (=> b!1335509 (=> (not res!886444) (not e!760627))))

(assert (=> b!1335509 (= res!886444 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44325 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335510 () Bool)

(assert (=> b!1335510 (= e!760627 (bvsge from!1980 (size!44324 _values!1320)))))

(declare-fun lt!592403 () ListLongMap!21709)

(declare-fun getCurrentListMapNoExtraKeys!6425 (array!90625 array!90623 (_ BitVec 32) (_ BitVec 32) V!54293 V!54293 (_ BitVec 32) Int) ListLongMap!21709)

(assert (=> b!1335510 (= lt!592403 (getCurrentListMapNoExtraKeys!6425 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1335511 () Bool)

(declare-fun res!886447 () Bool)

(assert (=> b!1335511 (=> (not res!886447) (not e!760627))))

(assert (=> b!1335511 (= res!886447 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57013 () Bool)

(declare-fun tp!108587 () Bool)

(declare-fun e!760628 () Bool)

(assert (=> mapNonEmpty!57013 (= mapRes!57013 (and tp!108587 e!760628))))

(declare-fun mapKey!57013 () (_ BitVec 32))

(declare-fun mapRest!57013 () (Array (_ BitVec 32) ValueCell!17548))

(declare-fun mapValue!57013 () ValueCell!17548)

(assert (=> mapNonEmpty!57013 (= (arr!43773 _values!1320) (store mapRest!57013 mapKey!57013 mapValue!57013))))

(declare-fun b!1335513 () Bool)

(declare-fun e!760626 () Bool)

(declare-fun tp_is_empty!36893 () Bool)

(assert (=> b!1335513 (= e!760626 tp_is_empty!36893)))

(declare-fun b!1335514 () Bool)

(declare-fun res!886446 () Bool)

(assert (=> b!1335514 (=> (not res!886446) (not e!760627))))

(assert (=> b!1335514 (= res!886446 (and (= (size!44324 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44325 _keys!1590) (size!44324 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335515 () Bool)

(assert (=> b!1335515 (= e!760628 tp_is_empty!36893)))

(declare-fun res!886451 () Bool)

(assert (=> start!112624 (=> (not res!886451) (not e!760627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112624 (= res!886451 (validMask!0 mask!1998))))

(assert (=> start!112624 e!760627))

(declare-fun e!760630 () Bool)

(declare-fun array_inv!32947 (array!90623) Bool)

(assert (=> start!112624 (and (array_inv!32947 _values!1320) e!760630)))

(assert (=> start!112624 true))

(declare-fun array_inv!32948 (array!90625) Bool)

(assert (=> start!112624 (array_inv!32948 _keys!1590)))

(assert (=> start!112624 tp!108586))

(assert (=> start!112624 tp_is_empty!36893))

(declare-fun b!1335512 () Bool)

(assert (=> b!1335512 (= e!760630 (and e!760626 mapRes!57013))))

(declare-fun condMapEmpty!57013 () Bool)

(declare-fun mapDefault!57013 () ValueCell!17548)


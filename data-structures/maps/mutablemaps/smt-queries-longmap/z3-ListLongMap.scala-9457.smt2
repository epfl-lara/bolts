; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112388 () Bool)

(assert start!112388)

(declare-fun b_free!30747 () Bool)

(declare-fun b_next!30747 () Bool)

(assert (=> start!112388 (= b_free!30747 (not b_next!30747))))

(declare-fun tp!107878 () Bool)

(declare-fun b_and!49559 () Bool)

(assert (=> start!112388 (= tp!107878 b_and!49559)))

(declare-fun b!1331654 () Bool)

(declare-fun res!883767 () Bool)

(declare-fun e!758775 () Bool)

(assert (=> b!1331654 (=> (not res!883767) (not e!758775))))

(declare-datatypes ((array!90163 0))(
  ( (array!90164 (arr!43543 (Array (_ BitVec 32) (_ BitVec 64))) (size!44094 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90163)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331654 (= res!883767 (validKeyInArray!0 (select (arr!43543 _keys!1590) from!1980)))))

(declare-fun b!1331655 () Bool)

(assert (=> b!1331655 (= e!758775 (not true))))

(declare-datatypes ((V!53979 0))(
  ( (V!53980 (val!18403 Int)) )
))
(declare-datatypes ((tuple2!23856 0))(
  ( (tuple2!23857 (_1!11938 (_ BitVec 64)) (_2!11938 V!53979)) )
))
(declare-datatypes ((List!31040 0))(
  ( (Nil!31037) (Cons!31036 (h!32245 tuple2!23856) (t!45207 List!31040)) )
))
(declare-datatypes ((ListLongMap!21525 0))(
  ( (ListLongMap!21526 (toList!10778 List!31040)) )
))
(declare-fun lt!591615 () ListLongMap!21525)

(declare-fun minValue!1262 () V!53979)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8878 (ListLongMap!21525 (_ BitVec 64)) Bool)

(declare-fun +!4668 (ListLongMap!21525 tuple2!23856) ListLongMap!21525)

(assert (=> b!1331655 (contains!8878 (+!4668 lt!591615 (tuple2!23857 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43763 0))(
  ( (Unit!43764) )
))
(declare-fun lt!591620 () Unit!43763)

(declare-fun addStillContains!1178 (ListLongMap!21525 (_ BitVec 64) V!53979 (_ BitVec 64)) Unit!43763)

(assert (=> b!1331655 (= lt!591620 (addStillContains!1178 lt!591615 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1331655 (contains!8878 lt!591615 k0!1153)))

(declare-fun lt!591617 () Unit!43763)

(declare-fun lt!591618 () V!53979)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!273 ((_ BitVec 64) (_ BitVec 64) V!53979 ListLongMap!21525) Unit!43763)

(assert (=> b!1331655 (= lt!591617 (lemmaInListMapAfterAddingDiffThenInBefore!273 k0!1153 (select (arr!43543 _keys!1590) from!1980) lt!591618 lt!591615))))

(declare-fun lt!591616 () ListLongMap!21525)

(assert (=> b!1331655 (contains!8878 lt!591616 k0!1153)))

(declare-fun lt!591619 () Unit!43763)

(assert (=> b!1331655 (= lt!591619 (lemmaInListMapAfterAddingDiffThenInBefore!273 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591616))))

(assert (=> b!1331655 (= lt!591616 (+!4668 lt!591615 (tuple2!23857 (select (arr!43543 _keys!1590) from!1980) lt!591618)))))

(declare-datatypes ((ValueCell!17430 0))(
  ( (ValueCellFull!17430 (v!21038 V!53979)) (EmptyCell!17430) )
))
(declare-datatypes ((array!90165 0))(
  ( (array!90166 (arr!43544 (Array (_ BitVec 32) ValueCell!17430)) (size!44095 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90165)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22002 (ValueCell!17430 V!53979) V!53979)

(declare-fun dynLambda!3705 (Int (_ BitVec 64)) V!53979)

(assert (=> b!1331655 (= lt!591618 (get!22002 (select (arr!43544 _values!1320) from!1980) (dynLambda!3705 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53979)

(declare-fun getCurrentListMapNoExtraKeys!6386 (array!90163 array!90165 (_ BitVec 32) (_ BitVec 32) V!53979 V!53979 (_ BitVec 32) Int) ListLongMap!21525)

(assert (=> b!1331655 (= lt!591615 (getCurrentListMapNoExtraKeys!6386 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331656 () Bool)

(declare-fun e!758778 () Bool)

(declare-fun tp_is_empty!36657 () Bool)

(assert (=> b!1331656 (= e!758778 tp_is_empty!36657)))

(declare-fun b!1331657 () Bool)

(declare-fun e!758779 () Bool)

(assert (=> b!1331657 (= e!758779 tp_is_empty!36657)))

(declare-fun b!1331658 () Bool)

(declare-fun res!883769 () Bool)

(assert (=> b!1331658 (=> (not res!883769) (not e!758775))))

(declare-datatypes ((List!31041 0))(
  ( (Nil!31038) (Cons!31037 (h!32246 (_ BitVec 64)) (t!45208 List!31041)) )
))
(declare-fun arrayNoDuplicates!0 (array!90163 (_ BitVec 32) List!31041) Bool)

(assert (=> b!1331658 (= res!883769 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31038))))

(declare-fun res!883765 () Bool)

(assert (=> start!112388 (=> (not res!883765) (not e!758775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112388 (= res!883765 (validMask!0 mask!1998))))

(assert (=> start!112388 e!758775))

(declare-fun e!758776 () Bool)

(declare-fun array_inv!32799 (array!90165) Bool)

(assert (=> start!112388 (and (array_inv!32799 _values!1320) e!758776)))

(assert (=> start!112388 true))

(declare-fun array_inv!32800 (array!90163) Bool)

(assert (=> start!112388 (array_inv!32800 _keys!1590)))

(assert (=> start!112388 tp!107878))

(assert (=> start!112388 tp_is_empty!36657))

(declare-fun b!1331659 () Bool)

(declare-fun res!883766 () Bool)

(assert (=> b!1331659 (=> (not res!883766) (not e!758775))))

(assert (=> b!1331659 (= res!883766 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44094 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331660 () Bool)

(declare-fun res!883763 () Bool)

(assert (=> b!1331660 (=> (not res!883763) (not e!758775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90163 (_ BitVec 32)) Bool)

(assert (=> b!1331660 (= res!883763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56659 () Bool)

(declare-fun mapRes!56659 () Bool)

(declare-fun tp!107879 () Bool)

(assert (=> mapNonEmpty!56659 (= mapRes!56659 (and tp!107879 e!758778))))

(declare-fun mapRest!56659 () (Array (_ BitVec 32) ValueCell!17430))

(declare-fun mapValue!56659 () ValueCell!17430)

(declare-fun mapKey!56659 () (_ BitVec 32))

(assert (=> mapNonEmpty!56659 (= (arr!43544 _values!1320) (store mapRest!56659 mapKey!56659 mapValue!56659))))

(declare-fun b!1331661 () Bool)

(assert (=> b!1331661 (= e!758776 (and e!758779 mapRes!56659))))

(declare-fun condMapEmpty!56659 () Bool)

(declare-fun mapDefault!56659 () ValueCell!17430)

(assert (=> b!1331661 (= condMapEmpty!56659 (= (arr!43544 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17430)) mapDefault!56659)))))

(declare-fun b!1331662 () Bool)

(declare-fun res!883768 () Bool)

(assert (=> b!1331662 (=> (not res!883768) (not e!758775))))

(assert (=> b!1331662 (= res!883768 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331663 () Bool)

(declare-fun res!883762 () Bool)

(assert (=> b!1331663 (=> (not res!883762) (not e!758775))))

(assert (=> b!1331663 (= res!883762 (and (= (size!44095 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44094 _keys!1590) (size!44095 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331664 () Bool)

(declare-fun res!883764 () Bool)

(assert (=> b!1331664 (=> (not res!883764) (not e!758775))))

(declare-fun getCurrentListMap!5701 (array!90163 array!90165 (_ BitVec 32) (_ BitVec 32) V!53979 V!53979 (_ BitVec 32) Int) ListLongMap!21525)

(assert (=> b!1331664 (= res!883764 (contains!8878 (getCurrentListMap!5701 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331665 () Bool)

(declare-fun res!883761 () Bool)

(assert (=> b!1331665 (=> (not res!883761) (not e!758775))))

(assert (=> b!1331665 (= res!883761 (not (= (select (arr!43543 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapIsEmpty!56659 () Bool)

(assert (=> mapIsEmpty!56659 mapRes!56659))

(assert (= (and start!112388 res!883765) b!1331663))

(assert (= (and b!1331663 res!883762) b!1331660))

(assert (= (and b!1331660 res!883763) b!1331658))

(assert (= (and b!1331658 res!883769) b!1331659))

(assert (= (and b!1331659 res!883766) b!1331664))

(assert (= (and b!1331664 res!883764) b!1331665))

(assert (= (and b!1331665 res!883761) b!1331654))

(assert (= (and b!1331654 res!883767) b!1331662))

(assert (= (and b!1331662 res!883768) b!1331655))

(assert (= (and b!1331661 condMapEmpty!56659) mapIsEmpty!56659))

(assert (= (and b!1331661 (not condMapEmpty!56659)) mapNonEmpty!56659))

(get-info :version)

(assert (= (and mapNonEmpty!56659 ((_ is ValueCellFull!17430) mapValue!56659)) b!1331656))

(assert (= (and b!1331661 ((_ is ValueCellFull!17430) mapDefault!56659)) b!1331657))

(assert (= start!112388 b!1331661))

(declare-fun b_lambda!24017 () Bool)

(assert (=> (not b_lambda!24017) (not b!1331655)))

(declare-fun t!45206 () Bool)

(declare-fun tb!11971 () Bool)

(assert (=> (and start!112388 (= defaultEntry!1323 defaultEntry!1323) t!45206) tb!11971))

(declare-fun result!25005 () Bool)

(assert (=> tb!11971 (= result!25005 tp_is_empty!36657)))

(assert (=> b!1331655 t!45206))

(declare-fun b_and!49561 () Bool)

(assert (= b_and!49559 (and (=> t!45206 result!25005) b_and!49561)))

(declare-fun m!1220399 () Bool)

(assert (=> b!1331654 m!1220399))

(assert (=> b!1331654 m!1220399))

(declare-fun m!1220401 () Bool)

(assert (=> b!1331654 m!1220401))

(assert (=> b!1331665 m!1220399))

(declare-fun m!1220403 () Bool)

(assert (=> start!112388 m!1220403))

(declare-fun m!1220405 () Bool)

(assert (=> start!112388 m!1220405))

(declare-fun m!1220407 () Bool)

(assert (=> start!112388 m!1220407))

(declare-fun m!1220409 () Bool)

(assert (=> mapNonEmpty!56659 m!1220409))

(declare-fun m!1220411 () Bool)

(assert (=> b!1331664 m!1220411))

(assert (=> b!1331664 m!1220411))

(declare-fun m!1220413 () Bool)

(assert (=> b!1331664 m!1220413))

(declare-fun m!1220415 () Bool)

(assert (=> b!1331660 m!1220415))

(declare-fun m!1220417 () Bool)

(assert (=> b!1331655 m!1220417))

(declare-fun m!1220419 () Bool)

(assert (=> b!1331655 m!1220419))

(declare-fun m!1220421 () Bool)

(assert (=> b!1331655 m!1220421))

(assert (=> b!1331655 m!1220399))

(declare-fun m!1220423 () Bool)

(assert (=> b!1331655 m!1220423))

(declare-fun m!1220425 () Bool)

(assert (=> b!1331655 m!1220425))

(declare-fun m!1220427 () Bool)

(assert (=> b!1331655 m!1220427))

(assert (=> b!1331655 m!1220417))

(declare-fun m!1220429 () Bool)

(assert (=> b!1331655 m!1220429))

(declare-fun m!1220431 () Bool)

(assert (=> b!1331655 m!1220431))

(declare-fun m!1220433 () Bool)

(assert (=> b!1331655 m!1220433))

(assert (=> b!1331655 m!1220399))

(assert (=> b!1331655 m!1220419))

(declare-fun m!1220435 () Bool)

(assert (=> b!1331655 m!1220435))

(declare-fun m!1220437 () Bool)

(assert (=> b!1331655 m!1220437))

(assert (=> b!1331655 m!1220437))

(declare-fun m!1220439 () Bool)

(assert (=> b!1331655 m!1220439))

(declare-fun m!1220441 () Bool)

(assert (=> b!1331658 m!1220441))

(check-sat (not b!1331660) tp_is_empty!36657 (not b!1331658) (not mapNonEmpty!56659) (not b!1331655) (not b_lambda!24017) (not b!1331664) (not start!112388) b_and!49561 (not b!1331654) (not b_next!30747))
(check-sat b_and!49561 (not b_next!30747))

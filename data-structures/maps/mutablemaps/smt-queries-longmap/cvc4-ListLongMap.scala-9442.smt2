; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112300 () Bool)

(assert start!112300)

(declare-fun b_free!30659 () Bool)

(declare-fun b_next!30659 () Bool)

(assert (=> start!112300 (= b_free!30659 (not b_next!30659))))

(declare-fun tp!107614 () Bool)

(declare-fun b_and!49383 () Bool)

(assert (=> start!112300 (= tp!107614 b_and!49383)))

(declare-fun mapIsEmpty!56527 () Bool)

(declare-fun mapRes!56527 () Bool)

(assert (=> mapIsEmpty!56527 mapRes!56527))

(declare-fun b!1329982 () Bool)

(declare-fun res!882573 () Bool)

(declare-fun e!758116 () Bool)

(assert (=> b!1329982 (=> (not res!882573) (not e!758116))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89993 0))(
  ( (array!89994 (arr!43458 (Array (_ BitVec 32) (_ BitVec 64))) (size!44009 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89993)

(declare-datatypes ((V!53861 0))(
  ( (V!53862 (val!18359 Int)) )
))
(declare-datatypes ((ValueCell!17386 0))(
  ( (ValueCellFull!17386 (v!20994 V!53861)) (EmptyCell!17386) )
))
(declare-datatypes ((array!89995 0))(
  ( (array!89996 (arr!43459 (Array (_ BitVec 32) ValueCell!17386)) (size!44010 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89995)

(assert (=> b!1329982 (= res!882573 (and (= (size!44010 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44009 _keys!1590) (size!44010 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329983 () Bool)

(declare-fun res!882577 () Bool)

(assert (=> b!1329983 (=> (not res!882577) (not e!758116))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53861)

(declare-fun zeroValue!1262 () V!53861)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23786 0))(
  ( (tuple2!23787 (_1!11903 (_ BitVec 64)) (_2!11903 V!53861)) )
))
(declare-datatypes ((List!30976 0))(
  ( (Nil!30973) (Cons!30972 (h!32181 tuple2!23786) (t!45055 List!30976)) )
))
(declare-datatypes ((ListLongMap!21455 0))(
  ( (ListLongMap!21456 (toList!10743 List!30976)) )
))
(declare-fun contains!8843 (ListLongMap!21455 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5674 (array!89993 array!89995 (_ BitVec 32) (_ BitVec 32) V!53861 V!53861 (_ BitVec 32) Int) ListLongMap!21455)

(assert (=> b!1329983 (= res!882577 (contains!8843 (getCurrentListMap!5674 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329984 () Bool)

(declare-fun e!758119 () Bool)

(declare-fun tp_is_empty!36569 () Bool)

(assert (=> b!1329984 (= e!758119 tp_is_empty!36569)))

(declare-fun b!1329985 () Bool)

(declare-fun res!882579 () Bool)

(assert (=> b!1329985 (=> (not res!882579) (not e!758116))))

(assert (=> b!1329985 (= res!882579 (not (= (select (arr!43458 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1329986 () Bool)

(declare-fun res!882581 () Bool)

(assert (=> b!1329986 (=> (not res!882581) (not e!758116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329986 (= res!882581 (validKeyInArray!0 (select (arr!43458 _keys!1590) from!1980)))))

(declare-fun b!1329988 () Bool)

(declare-fun res!882575 () Bool)

(assert (=> b!1329988 (=> (not res!882575) (not e!758116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89993 (_ BitVec 32)) Bool)

(assert (=> b!1329988 (= res!882575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329989 () Bool)

(declare-fun res!882576 () Bool)

(assert (=> b!1329989 (=> (not res!882576) (not e!758116))))

(assert (=> b!1329989 (= res!882576 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44009 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329990 () Bool)

(declare-fun res!882580 () Bool)

(assert (=> b!1329990 (=> (not res!882580) (not e!758116))))

(assert (=> b!1329990 (= res!882580 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329991 () Bool)

(declare-fun e!758117 () Bool)

(assert (=> b!1329991 (= e!758117 tp_is_empty!36569)))

(declare-fun mapNonEmpty!56527 () Bool)

(declare-fun tp!107615 () Bool)

(assert (=> mapNonEmpty!56527 (= mapRes!56527 (and tp!107615 e!758119))))

(declare-fun mapValue!56527 () ValueCell!17386)

(declare-fun mapRest!56527 () (Array (_ BitVec 32) ValueCell!17386))

(declare-fun mapKey!56527 () (_ BitVec 32))

(assert (=> mapNonEmpty!56527 (= (arr!43459 _values!1320) (store mapRest!56527 mapKey!56527 mapValue!56527))))

(declare-fun b!1329987 () Bool)

(assert (=> b!1329987 (= e!758116 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun lt!590989 () ListLongMap!21455)

(assert (=> b!1329987 (contains!8843 lt!590989 k!1153)))

(declare-datatypes ((Unit!43703 0))(
  ( (Unit!43704) )
))
(declare-fun lt!590990 () Unit!43703)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!243 ((_ BitVec 64) (_ BitVec 64) V!53861 ListLongMap!21455) Unit!43703)

(assert (=> b!1329987 (= lt!590990 (lemmaInListMapAfterAddingDiffThenInBefore!243 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590989))))

(declare-fun +!4638 (ListLongMap!21455 tuple2!23786) ListLongMap!21455)

(declare-fun getCurrentListMapNoExtraKeys!6356 (array!89993 array!89995 (_ BitVec 32) (_ BitVec 32) V!53861 V!53861 (_ BitVec 32) Int) ListLongMap!21455)

(declare-fun get!21942 (ValueCell!17386 V!53861) V!53861)

(declare-fun dynLambda!3675 (Int (_ BitVec 64)) V!53861)

(assert (=> b!1329987 (= lt!590989 (+!4638 (getCurrentListMapNoExtraKeys!6356 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23787 (select (arr!43458 _keys!1590) from!1980) (get!21942 (select (arr!43459 _values!1320) from!1980) (dynLambda!3675 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!882574 () Bool)

(assert (=> start!112300 (=> (not res!882574) (not e!758116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112300 (= res!882574 (validMask!0 mask!1998))))

(assert (=> start!112300 e!758116))

(declare-fun e!758118 () Bool)

(declare-fun array_inv!32739 (array!89995) Bool)

(assert (=> start!112300 (and (array_inv!32739 _values!1320) e!758118)))

(assert (=> start!112300 true))

(declare-fun array_inv!32740 (array!89993) Bool)

(assert (=> start!112300 (array_inv!32740 _keys!1590)))

(assert (=> start!112300 tp!107614))

(assert (=> start!112300 tp_is_empty!36569))

(declare-fun b!1329992 () Bool)

(assert (=> b!1329992 (= e!758118 (and e!758117 mapRes!56527))))

(declare-fun condMapEmpty!56527 () Bool)

(declare-fun mapDefault!56527 () ValueCell!17386)


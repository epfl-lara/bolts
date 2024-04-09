; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112386 () Bool)

(assert start!112386)

(declare-fun b_free!30745 () Bool)

(declare-fun b_next!30745 () Bool)

(assert (=> start!112386 (= b_free!30745 (not b_next!30745))))

(declare-fun tp!107872 () Bool)

(declare-fun b_and!49555 () Bool)

(assert (=> start!112386 (= tp!107872 b_and!49555)))

(declare-fun b!1331616 () Bool)

(declare-fun res!883737 () Bool)

(declare-fun e!758761 () Bool)

(assert (=> b!1331616 (=> (not res!883737) (not e!758761))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331616 (= res!883737 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331617 () Bool)

(declare-fun res!883736 () Bool)

(assert (=> b!1331617 (=> (not res!883736) (not e!758761))))

(declare-datatypes ((array!90159 0))(
  ( (array!90160 (arr!43541 (Array (_ BitVec 32) (_ BitVec 64))) (size!44092 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90159)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331617 (= res!883736 (validKeyInArray!0 (select (arr!43541 _keys!1590) from!1980)))))

(declare-fun b!1331618 () Bool)

(declare-fun e!758763 () Bool)

(declare-fun tp_is_empty!36655 () Bool)

(assert (=> b!1331618 (= e!758763 tp_is_empty!36655)))

(declare-fun b!1331619 () Bool)

(declare-fun res!883740 () Bool)

(assert (=> b!1331619 (=> (not res!883740) (not e!758761))))

(declare-datatypes ((V!53977 0))(
  ( (V!53978 (val!18402 Int)) )
))
(declare-datatypes ((ValueCell!17429 0))(
  ( (ValueCellFull!17429 (v!21037 V!53977)) (EmptyCell!17429) )
))
(declare-datatypes ((array!90161 0))(
  ( (array!90162 (arr!43542 (Array (_ BitVec 32) ValueCell!17429)) (size!44093 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90161)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53977)

(declare-fun zeroValue!1262 () V!53977)

(declare-datatypes ((tuple2!23854 0))(
  ( (tuple2!23855 (_1!11937 (_ BitVec 64)) (_2!11937 V!53977)) )
))
(declare-datatypes ((List!31038 0))(
  ( (Nil!31035) (Cons!31034 (h!32243 tuple2!23854) (t!45203 List!31038)) )
))
(declare-datatypes ((ListLongMap!21523 0))(
  ( (ListLongMap!21524 (toList!10777 List!31038)) )
))
(declare-fun contains!8877 (ListLongMap!21523 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5700 (array!90159 array!90161 (_ BitVec 32) (_ BitVec 32) V!53977 V!53977 (_ BitVec 32) Int) ListLongMap!21523)

(assert (=> b!1331619 (= res!883740 (contains!8877 (getCurrentListMap!5700 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331620 () Bool)

(declare-fun res!883735 () Bool)

(assert (=> b!1331620 (=> (not res!883735) (not e!758761))))

(declare-datatypes ((List!31039 0))(
  ( (Nil!31036) (Cons!31035 (h!32244 (_ BitVec 64)) (t!45204 List!31039)) )
))
(declare-fun arrayNoDuplicates!0 (array!90159 (_ BitVec 32) List!31039) Bool)

(assert (=> b!1331620 (= res!883735 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31036))))

(declare-fun b!1331621 () Bool)

(declare-fun res!883734 () Bool)

(assert (=> b!1331621 (=> (not res!883734) (not e!758761))))

(assert (=> b!1331621 (= res!883734 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44092 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56656 () Bool)

(declare-fun mapRes!56656 () Bool)

(assert (=> mapIsEmpty!56656 mapRes!56656))

(declare-fun b!1331622 () Bool)

(declare-fun res!883741 () Bool)

(assert (=> b!1331622 (=> (not res!883741) (not e!758761))))

(assert (=> b!1331622 (= res!883741 (and (= (size!44093 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44092 _keys!1590) (size!44093 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331623 () Bool)

(assert (=> b!1331623 (= e!758761 (not true))))

(declare-fun lt!591602 () ListLongMap!21523)

(declare-fun +!4667 (ListLongMap!21523 tuple2!23854) ListLongMap!21523)

(assert (=> b!1331623 (contains!8877 (+!4667 lt!591602 (tuple2!23855 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43761 0))(
  ( (Unit!43762) )
))
(declare-fun lt!591599 () Unit!43761)

(declare-fun addStillContains!1177 (ListLongMap!21523 (_ BitVec 64) V!53977 (_ BitVec 64)) Unit!43761)

(assert (=> b!1331623 (= lt!591599 (addStillContains!1177 lt!591602 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1331623 (contains!8877 lt!591602 k!1153)))

(declare-fun lt!591597 () Unit!43761)

(declare-fun lt!591600 () V!53977)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!272 ((_ BitVec 64) (_ BitVec 64) V!53977 ListLongMap!21523) Unit!43761)

(assert (=> b!1331623 (= lt!591597 (lemmaInListMapAfterAddingDiffThenInBefore!272 k!1153 (select (arr!43541 _keys!1590) from!1980) lt!591600 lt!591602))))

(declare-fun lt!591598 () ListLongMap!21523)

(assert (=> b!1331623 (contains!8877 lt!591598 k!1153)))

(declare-fun lt!591601 () Unit!43761)

(assert (=> b!1331623 (= lt!591601 (lemmaInListMapAfterAddingDiffThenInBefore!272 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591598))))

(assert (=> b!1331623 (= lt!591598 (+!4667 lt!591602 (tuple2!23855 (select (arr!43541 _keys!1590) from!1980) lt!591600)))))

(declare-fun get!22001 (ValueCell!17429 V!53977) V!53977)

(declare-fun dynLambda!3704 (Int (_ BitVec 64)) V!53977)

(assert (=> b!1331623 (= lt!591600 (get!22001 (select (arr!43542 _values!1320) from!1980) (dynLambda!3704 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6385 (array!90159 array!90161 (_ BitVec 32) (_ BitVec 32) V!53977 V!53977 (_ BitVec 32) Int) ListLongMap!21523)

(assert (=> b!1331623 (= lt!591602 (getCurrentListMapNoExtraKeys!6385 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331624 () Bool)

(declare-fun e!758760 () Bool)

(assert (=> b!1331624 (= e!758760 tp_is_empty!36655)))

(declare-fun b!1331625 () Bool)

(declare-fun res!883739 () Bool)

(assert (=> b!1331625 (=> (not res!883739) (not e!758761))))

(assert (=> b!1331625 (= res!883739 (not (= (select (arr!43541 _keys!1590) from!1980) k!1153)))))

(declare-fun mapNonEmpty!56656 () Bool)

(declare-fun tp!107873 () Bool)

(assert (=> mapNonEmpty!56656 (= mapRes!56656 (and tp!107873 e!758763))))

(declare-fun mapRest!56656 () (Array (_ BitVec 32) ValueCell!17429))

(declare-fun mapKey!56656 () (_ BitVec 32))

(declare-fun mapValue!56656 () ValueCell!17429)

(assert (=> mapNonEmpty!56656 (= (arr!43542 _values!1320) (store mapRest!56656 mapKey!56656 mapValue!56656))))

(declare-fun res!883738 () Bool)

(assert (=> start!112386 (=> (not res!883738) (not e!758761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112386 (= res!883738 (validMask!0 mask!1998))))

(assert (=> start!112386 e!758761))

(declare-fun e!758764 () Bool)

(declare-fun array_inv!32797 (array!90161) Bool)

(assert (=> start!112386 (and (array_inv!32797 _values!1320) e!758764)))

(assert (=> start!112386 true))

(declare-fun array_inv!32798 (array!90159) Bool)

(assert (=> start!112386 (array_inv!32798 _keys!1590)))

(assert (=> start!112386 tp!107872))

(assert (=> start!112386 tp_is_empty!36655))

(declare-fun b!1331626 () Bool)

(assert (=> b!1331626 (= e!758764 (and e!758760 mapRes!56656))))

(declare-fun condMapEmpty!56656 () Bool)

(declare-fun mapDefault!56656 () ValueCell!17429)


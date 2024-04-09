; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112390 () Bool)

(assert start!112390)

(declare-fun b_free!30749 () Bool)

(declare-fun b_next!30749 () Bool)

(assert (=> start!112390 (= b_free!30749 (not b_next!30749))))

(declare-fun tp!107884 () Bool)

(declare-fun b_and!49563 () Bool)

(assert (=> start!112390 (= tp!107884 b_and!49563)))

(declare-fun mapIsEmpty!56662 () Bool)

(declare-fun mapRes!56662 () Bool)

(assert (=> mapIsEmpty!56662 mapRes!56662))

(declare-fun mapNonEmpty!56662 () Bool)

(declare-fun tp!107885 () Bool)

(declare-fun e!758794 () Bool)

(assert (=> mapNonEmpty!56662 (= mapRes!56662 (and tp!107885 e!758794))))

(declare-fun mapKey!56662 () (_ BitVec 32))

(declare-datatypes ((V!53981 0))(
  ( (V!53982 (val!18404 Int)) )
))
(declare-datatypes ((ValueCell!17431 0))(
  ( (ValueCellFull!17431 (v!21039 V!53981)) (EmptyCell!17431) )
))
(declare-fun mapValue!56662 () ValueCell!17431)

(declare-fun mapRest!56662 () (Array (_ BitVec 32) ValueCell!17431))

(declare-datatypes ((array!90167 0))(
  ( (array!90168 (arr!43545 (Array (_ BitVec 32) ValueCell!17431)) (size!44096 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90167)

(assert (=> mapNonEmpty!56662 (= (arr!43545 _values!1320) (store mapRest!56662 mapKey!56662 mapValue!56662))))

(declare-fun b!1331692 () Bool)

(declare-fun res!883794 () Bool)

(declare-fun e!758793 () Bool)

(assert (=> b!1331692 (=> (not res!883794) (not e!758793))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90169 0))(
  ( (array!90170 (arr!43546 (Array (_ BitVec 32) (_ BitVec 64))) (size!44097 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90169)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun zeroValue!1262 () V!53981)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun minValue!1262 () V!53981)

(declare-datatypes ((tuple2!23858 0))(
  ( (tuple2!23859 (_1!11939 (_ BitVec 64)) (_2!11939 V!53981)) )
))
(declare-datatypes ((List!31042 0))(
  ( (Nil!31039) (Cons!31038 (h!32247 tuple2!23858) (t!45211 List!31042)) )
))
(declare-datatypes ((ListLongMap!21527 0))(
  ( (ListLongMap!21528 (toList!10779 List!31042)) )
))
(declare-fun contains!8879 (ListLongMap!21527 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5702 (array!90169 array!90167 (_ BitVec 32) (_ BitVec 32) V!53981 V!53981 (_ BitVec 32) Int) ListLongMap!21527)

(assert (=> b!1331692 (= res!883794 (contains!8879 (getCurrentListMap!5702 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!883795 () Bool)

(assert (=> start!112390 (=> (not res!883795) (not e!758793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112390 (= res!883795 (validMask!0 mask!1998))))

(assert (=> start!112390 e!758793))

(declare-fun e!758792 () Bool)

(declare-fun array_inv!32801 (array!90167) Bool)

(assert (=> start!112390 (and (array_inv!32801 _values!1320) e!758792)))

(assert (=> start!112390 true))

(declare-fun array_inv!32802 (array!90169) Bool)

(assert (=> start!112390 (array_inv!32802 _keys!1590)))

(assert (=> start!112390 tp!107884))

(declare-fun tp_is_empty!36659 () Bool)

(assert (=> start!112390 tp_is_empty!36659))

(declare-fun b!1331693 () Bool)

(assert (=> b!1331693 (= e!758793 (not true))))

(declare-fun lt!591635 () ListLongMap!21527)

(declare-fun +!4669 (ListLongMap!21527 tuple2!23858) ListLongMap!21527)

(assert (=> b!1331693 (contains!8879 (+!4669 lt!591635 (tuple2!23859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43765 0))(
  ( (Unit!43766) )
))
(declare-fun lt!591638 () Unit!43765)

(declare-fun addStillContains!1179 (ListLongMap!21527 (_ BitVec 64) V!53981 (_ BitVec 64)) Unit!43765)

(assert (=> b!1331693 (= lt!591638 (addStillContains!1179 lt!591635 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1331693 (contains!8879 lt!591635 k!1153)))

(declare-fun lt!591634 () V!53981)

(declare-fun lt!591633 () Unit!43765)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!274 ((_ BitVec 64) (_ BitVec 64) V!53981 ListLongMap!21527) Unit!43765)

(assert (=> b!1331693 (= lt!591633 (lemmaInListMapAfterAddingDiffThenInBefore!274 k!1153 (select (arr!43546 _keys!1590) from!1980) lt!591634 lt!591635))))

(declare-fun lt!591637 () ListLongMap!21527)

(assert (=> b!1331693 (contains!8879 lt!591637 k!1153)))

(declare-fun lt!591636 () Unit!43765)

(assert (=> b!1331693 (= lt!591636 (lemmaInListMapAfterAddingDiffThenInBefore!274 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591637))))

(assert (=> b!1331693 (= lt!591637 (+!4669 lt!591635 (tuple2!23859 (select (arr!43546 _keys!1590) from!1980) lt!591634)))))

(declare-fun get!22003 (ValueCell!17431 V!53981) V!53981)

(declare-fun dynLambda!3706 (Int (_ BitVec 64)) V!53981)

(assert (=> b!1331693 (= lt!591634 (get!22003 (select (arr!43545 _values!1320) from!1980) (dynLambda!3706 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6387 (array!90169 array!90167 (_ BitVec 32) (_ BitVec 32) V!53981 V!53981 (_ BitVec 32) Int) ListLongMap!21527)

(assert (=> b!1331693 (= lt!591635 (getCurrentListMapNoExtraKeys!6387 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331694 () Bool)

(assert (=> b!1331694 (= e!758794 tp_is_empty!36659)))

(declare-fun b!1331695 () Bool)

(declare-fun res!883789 () Bool)

(assert (=> b!1331695 (=> (not res!883789) (not e!758793))))

(assert (=> b!1331695 (= res!883789 (and (= (size!44096 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44097 _keys!1590) (size!44096 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331696 () Bool)

(declare-fun e!758791 () Bool)

(assert (=> b!1331696 (= e!758792 (and e!758791 mapRes!56662))))

(declare-fun condMapEmpty!56662 () Bool)

(declare-fun mapDefault!56662 () ValueCell!17431)


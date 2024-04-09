; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112360 () Bool)

(assert start!112360)

(declare-fun b_free!30719 () Bool)

(declare-fun b_next!30719 () Bool)

(assert (=> start!112360 (= b_free!30719 (not b_next!30719))))

(declare-fun tp!107795 () Bool)

(declare-fun b_and!49503 () Bool)

(assert (=> start!112360 (= tp!107795 b_and!49503)))

(declare-fun b!1331122 () Bool)

(declare-fun res!883388 () Bool)

(declare-fun e!758569 () Bool)

(assert (=> b!1331122 (=> (not res!883388) (not e!758569))))

(declare-datatypes ((array!90109 0))(
  ( (array!90110 (arr!43516 (Array (_ BitVec 32) (_ BitVec 64))) (size!44067 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90109)

(declare-datatypes ((List!31022 0))(
  ( (Nil!31019) (Cons!31018 (h!32227 (_ BitVec 64)) (t!45161 List!31022)) )
))
(declare-fun arrayNoDuplicates!0 (array!90109 (_ BitVec 32) List!31022) Bool)

(assert (=> b!1331122 (= res!883388 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31019))))

(declare-fun b!1331123 () Bool)

(declare-fun res!883391 () Bool)

(assert (=> b!1331123 (=> (not res!883391) (not e!758569))))

(declare-datatypes ((V!53941 0))(
  ( (V!53942 (val!18389 Int)) )
))
(declare-datatypes ((ValueCell!17416 0))(
  ( (ValueCellFull!17416 (v!21024 V!53941)) (EmptyCell!17416) )
))
(declare-datatypes ((array!90111 0))(
  ( (array!90112 (arr!43517 (Array (_ BitVec 32) ValueCell!17416)) (size!44068 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90111)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53941)

(declare-fun zeroValue!1262 () V!53941)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23836 0))(
  ( (tuple2!23837 (_1!11928 (_ BitVec 64)) (_2!11928 V!53941)) )
))
(declare-datatypes ((List!31023 0))(
  ( (Nil!31020) (Cons!31019 (h!32228 tuple2!23836) (t!45162 List!31023)) )
))
(declare-datatypes ((ListLongMap!21505 0))(
  ( (ListLongMap!21506 (toList!10768 List!31023)) )
))
(declare-fun contains!8868 (ListLongMap!21505 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5691 (array!90109 array!90111 (_ BitVec 32) (_ BitVec 32) V!53941 V!53941 (_ BitVec 32) Int) ListLongMap!21505)

(assert (=> b!1331123 (= res!883391 (contains!8868 (getCurrentListMap!5691 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56617 () Bool)

(declare-fun mapRes!56617 () Bool)

(assert (=> mapIsEmpty!56617 mapRes!56617))

(declare-fun b!1331124 () Bool)

(declare-fun e!758568 () Bool)

(declare-fun tp_is_empty!36629 () Bool)

(assert (=> b!1331124 (= e!758568 tp_is_empty!36629)))

(declare-fun b!1331125 () Bool)

(assert (=> b!1331125 (= e!758569 (not true))))

(declare-fun lt!591382 () ListLongMap!21505)

(assert (=> b!1331125 (contains!8868 lt!591382 k!1153)))

(declare-fun lt!591385 () V!53941)

(declare-datatypes ((Unit!43745 0))(
  ( (Unit!43746) )
))
(declare-fun lt!591386 () Unit!43745)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!264 ((_ BitVec 64) (_ BitVec 64) V!53941 ListLongMap!21505) Unit!43745)

(assert (=> b!1331125 (= lt!591386 (lemmaInListMapAfterAddingDiffThenInBefore!264 k!1153 (select (arr!43516 _keys!1590) from!1980) lt!591385 lt!591382))))

(declare-fun lt!591383 () ListLongMap!21505)

(assert (=> b!1331125 (contains!8868 lt!591383 k!1153)))

(declare-fun lt!591384 () Unit!43745)

(assert (=> b!1331125 (= lt!591384 (lemmaInListMapAfterAddingDiffThenInBefore!264 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591383))))

(declare-fun +!4659 (ListLongMap!21505 tuple2!23836) ListLongMap!21505)

(assert (=> b!1331125 (= lt!591383 (+!4659 lt!591382 (tuple2!23837 (select (arr!43516 _keys!1590) from!1980) lt!591385)))))

(declare-fun get!21983 (ValueCell!17416 V!53941) V!53941)

(declare-fun dynLambda!3696 (Int (_ BitVec 64)) V!53941)

(assert (=> b!1331125 (= lt!591385 (get!21983 (select (arr!43517 _values!1320) from!1980) (dynLambda!3696 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6377 (array!90109 array!90111 (_ BitVec 32) (_ BitVec 32) V!53941 V!53941 (_ BitVec 32) Int) ListLongMap!21505)

(assert (=> b!1331125 (= lt!591382 (getCurrentListMapNoExtraKeys!6377 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331127 () Bool)

(declare-fun res!883386 () Bool)

(assert (=> b!1331127 (=> (not res!883386) (not e!758569))))

(assert (=> b!1331127 (= res!883386 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44067 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331128 () Bool)

(declare-fun res!883387 () Bool)

(assert (=> b!1331128 (=> (not res!883387) (not e!758569))))

(assert (=> b!1331128 (= res!883387 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56617 () Bool)

(declare-fun tp!107794 () Bool)

(assert (=> mapNonEmpty!56617 (= mapRes!56617 (and tp!107794 e!758568))))

(declare-fun mapKey!56617 () (_ BitVec 32))

(declare-fun mapValue!56617 () ValueCell!17416)

(declare-fun mapRest!56617 () (Array (_ BitVec 32) ValueCell!17416))

(assert (=> mapNonEmpty!56617 (= (arr!43517 _values!1320) (store mapRest!56617 mapKey!56617 mapValue!56617))))

(declare-fun b!1331129 () Bool)

(declare-fun res!883383 () Bool)

(assert (=> b!1331129 (=> (not res!883383) (not e!758569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331129 (= res!883383 (validKeyInArray!0 (select (arr!43516 _keys!1590) from!1980)))))

(declare-fun res!883389 () Bool)

(assert (=> start!112360 (=> (not res!883389) (not e!758569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112360 (= res!883389 (validMask!0 mask!1998))))

(assert (=> start!112360 e!758569))

(declare-fun e!758567 () Bool)

(declare-fun array_inv!32777 (array!90111) Bool)

(assert (=> start!112360 (and (array_inv!32777 _values!1320) e!758567)))

(assert (=> start!112360 true))

(declare-fun array_inv!32778 (array!90109) Bool)

(assert (=> start!112360 (array_inv!32778 _keys!1590)))

(assert (=> start!112360 tp!107795))

(assert (=> start!112360 tp_is_empty!36629))

(declare-fun b!1331126 () Bool)

(declare-fun res!883390 () Bool)

(assert (=> b!1331126 (=> (not res!883390) (not e!758569))))

(assert (=> b!1331126 (= res!883390 (and (= (size!44068 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44067 _keys!1590) (size!44068 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331130 () Bool)

(declare-fun e!758565 () Bool)

(assert (=> b!1331130 (= e!758565 tp_is_empty!36629)))

(declare-fun b!1331131 () Bool)

(declare-fun res!883385 () Bool)

(assert (=> b!1331131 (=> (not res!883385) (not e!758569))))

(assert (=> b!1331131 (= res!883385 (not (= (select (arr!43516 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331132 () Bool)

(declare-fun res!883384 () Bool)

(assert (=> b!1331132 (=> (not res!883384) (not e!758569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90109 (_ BitVec 32)) Bool)

(assert (=> b!1331132 (= res!883384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331133 () Bool)

(assert (=> b!1331133 (= e!758567 (and e!758565 mapRes!56617))))

(declare-fun condMapEmpty!56617 () Bool)

(declare-fun mapDefault!56617 () ValueCell!17416)


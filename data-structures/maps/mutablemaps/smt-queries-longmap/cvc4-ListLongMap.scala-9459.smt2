; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112402 () Bool)

(assert start!112402)

(declare-fun b_free!30761 () Bool)

(declare-fun b_next!30761 () Bool)

(assert (=> start!112402 (= b_free!30761 (not b_next!30761))))

(declare-fun tp!107920 () Bool)

(declare-fun b_and!49587 () Bool)

(assert (=> start!112402 (= tp!107920 b_and!49587)))

(declare-fun b!1331920 () Bool)

(declare-fun e!758881 () Bool)

(declare-fun tp_is_empty!36671 () Bool)

(assert (=> b!1331920 (= e!758881 tp_is_empty!36671)))

(declare-fun b!1331922 () Bool)

(declare-fun res!883952 () Bool)

(declare-fun e!758882 () Bool)

(assert (=> b!1331922 (=> (not res!883952) (not e!758882))))

(declare-datatypes ((V!53997 0))(
  ( (V!53998 (val!18410 Int)) )
))
(declare-datatypes ((ValueCell!17437 0))(
  ( (ValueCellFull!17437 (v!21045 V!53997)) (EmptyCell!17437) )
))
(declare-datatypes ((array!90191 0))(
  ( (array!90192 (arr!43557 (Array (_ BitVec 32) ValueCell!17437)) (size!44108 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90191)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90193 0))(
  ( (array!90194 (arr!43558 (Array (_ BitVec 32) (_ BitVec 64))) (size!44109 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90193)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53997)

(declare-fun zeroValue!1262 () V!53997)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!23870 0))(
  ( (tuple2!23871 (_1!11945 (_ BitVec 64)) (_2!11945 V!53997)) )
))
(declare-datatypes ((List!31051 0))(
  ( (Nil!31048) (Cons!31047 (h!32256 tuple2!23870) (t!45232 List!31051)) )
))
(declare-datatypes ((ListLongMap!21539 0))(
  ( (ListLongMap!21540 (toList!10785 List!31051)) )
))
(declare-fun contains!8885 (ListLongMap!21539 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5708 (array!90193 array!90191 (_ BitVec 32) (_ BitVec 32) V!53997 V!53997 (_ BitVec 32) Int) ListLongMap!21539)

(assert (=> b!1331922 (= res!883952 (contains!8885 (getCurrentListMap!5708 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331923 () Bool)

(assert (=> b!1331923 (= e!758882 (not true))))

(declare-fun lt!591742 () ListLongMap!21539)

(declare-fun +!4673 (ListLongMap!21539 tuple2!23870) ListLongMap!21539)

(assert (=> b!1331923 (contains!8885 (+!4673 lt!591742 (tuple2!23871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43773 0))(
  ( (Unit!43774) )
))
(declare-fun lt!591744 () Unit!43773)

(declare-fun addStillContains!1183 (ListLongMap!21539 (_ BitVec 64) V!53997 (_ BitVec 64)) Unit!43773)

(assert (=> b!1331923 (= lt!591744 (addStillContains!1183 lt!591742 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1331923 (contains!8885 lt!591742 k!1153)))

(declare-fun lt!591746 () Unit!43773)

(declare-fun lt!591745 () V!53997)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!278 ((_ BitVec 64) (_ BitVec 64) V!53997 ListLongMap!21539) Unit!43773)

(assert (=> b!1331923 (= lt!591746 (lemmaInListMapAfterAddingDiffThenInBefore!278 k!1153 (select (arr!43558 _keys!1590) from!1980) lt!591745 lt!591742))))

(declare-fun lt!591741 () ListLongMap!21539)

(assert (=> b!1331923 (contains!8885 lt!591741 k!1153)))

(declare-fun lt!591743 () Unit!43773)

(assert (=> b!1331923 (= lt!591743 (lemmaInListMapAfterAddingDiffThenInBefore!278 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591741))))

(assert (=> b!1331923 (= lt!591741 (+!4673 lt!591742 (tuple2!23871 (select (arr!43558 _keys!1590) from!1980) lt!591745)))))

(declare-fun get!22011 (ValueCell!17437 V!53997) V!53997)

(declare-fun dynLambda!3710 (Int (_ BitVec 64)) V!53997)

(assert (=> b!1331923 (= lt!591745 (get!22011 (select (arr!43557 _values!1320) from!1980) (dynLambda!3710 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6391 (array!90193 array!90191 (_ BitVec 32) (_ BitVec 32) V!53997 V!53997 (_ BitVec 32) Int) ListLongMap!21539)

(assert (=> b!1331923 (= lt!591742 (getCurrentListMapNoExtraKeys!6391 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331924 () Bool)

(declare-fun res!883954 () Bool)

(assert (=> b!1331924 (=> (not res!883954) (not e!758882))))

(assert (=> b!1331924 (= res!883954 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44109 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331925 () Bool)

(declare-fun res!883953 () Bool)

(assert (=> b!1331925 (=> (not res!883953) (not e!758882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331925 (= res!883953 (validKeyInArray!0 (select (arr!43558 _keys!1590) from!1980)))))

(declare-fun b!1331926 () Bool)

(declare-fun res!883956 () Bool)

(assert (=> b!1331926 (=> (not res!883956) (not e!758882))))

(assert (=> b!1331926 (= res!883956 (not (= (select (arr!43558 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331927 () Bool)

(declare-fun res!883958 () Bool)

(assert (=> b!1331927 (=> (not res!883958) (not e!758882))))

(assert (=> b!1331927 (= res!883958 (and (= (size!44108 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44109 _keys!1590) (size!44108 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331928 () Bool)

(declare-fun e!758880 () Bool)

(declare-fun e!758884 () Bool)

(declare-fun mapRes!56680 () Bool)

(assert (=> b!1331928 (= e!758880 (and e!758884 mapRes!56680))))

(declare-fun condMapEmpty!56680 () Bool)

(declare-fun mapDefault!56680 () ValueCell!17437)


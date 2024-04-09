; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112694 () Bool)

(assert start!112694)

(declare-fun b_free!30995 () Bool)

(declare-fun b_next!30995 () Bool)

(assert (=> start!112694 (= b_free!30995 (not b_next!30995))))

(declare-fun tp!108626 () Bool)

(declare-fun b_and!49937 () Bool)

(assert (=> start!112694 (= tp!108626 b_and!49937)))

(declare-fun b!1336114 () Bool)

(declare-fun res!886771 () Bool)

(declare-fun e!760963 () Bool)

(assert (=> b!1336114 (=> (not res!886771) (not e!760963))))

(declare-datatypes ((array!90643 0))(
  ( (array!90644 (arr!43782 (Array (_ BitVec 32) (_ BitVec 64))) (size!44333 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90643)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336114 (= res!886771 (validKeyInArray!0 (select (arr!43782 _keys!1590) from!1980)))))

(declare-fun b!1336115 () Bool)

(assert (=> b!1336115 (= e!760963 false)))

(declare-datatypes ((V!54309 0))(
  ( (V!54310 (val!18527 Int)) )
))
(declare-datatypes ((ValueCell!17554 0))(
  ( (ValueCellFull!17554 (v!21165 V!54309)) (EmptyCell!17554) )
))
(declare-datatypes ((array!90645 0))(
  ( (array!90646 (arr!43783 (Array (_ BitVec 32) ValueCell!17554)) (size!44334 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90645)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54309)

(declare-fun zeroValue!1262 () V!54309)

(declare-fun lt!592671 () Bool)

(declare-datatypes ((tuple2!24046 0))(
  ( (tuple2!24047 (_1!12033 (_ BitVec 64)) (_2!12033 V!54309)) )
))
(declare-datatypes ((List!31215 0))(
  ( (Nil!31212) (Cons!31211 (h!32420 tuple2!24046) (t!45498 List!31215)) )
))
(declare-datatypes ((ListLongMap!21715 0))(
  ( (ListLongMap!21716 (toList!10873 List!31215)) )
))
(declare-fun contains!8974 (ListLongMap!21715 (_ BitVec 64)) Bool)

(declare-fun +!4705 (ListLongMap!21715 tuple2!24046) ListLongMap!21715)

(declare-fun getCurrentListMapNoExtraKeys!6428 (array!90643 array!90645 (_ BitVec 32) (_ BitVec 32) V!54309 V!54309 (_ BitVec 32) Int) ListLongMap!21715)

(declare-fun get!22124 (ValueCell!17554 V!54309) V!54309)

(declare-fun dynLambda!3742 (Int (_ BitVec 64)) V!54309)

(assert (=> b!1336115 (= lt!592671 (contains!8974 (+!4705 (+!4705 (getCurrentListMapNoExtraKeys!6428 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24047 (select (arr!43782 _keys!1590) from!1980) (get!22124 (select (arr!43783 _values!1320) from!1980) (dynLambda!3742 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24047 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153))))

(declare-fun res!886770 () Bool)

(assert (=> start!112694 (=> (not res!886770) (not e!760963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112694 (= res!886770 (validMask!0 mask!1998))))

(assert (=> start!112694 e!760963))

(declare-fun e!760962 () Bool)

(declare-fun array_inv!32953 (array!90645) Bool)

(assert (=> start!112694 (and (array_inv!32953 _values!1320) e!760962)))

(assert (=> start!112694 true))

(declare-fun array_inv!32954 (array!90643) Bool)

(assert (=> start!112694 (array_inv!32954 _keys!1590)))

(assert (=> start!112694 tp!108626))

(declare-fun tp_is_empty!36905 () Bool)

(assert (=> start!112694 tp_is_empty!36905))

(declare-fun mapIsEmpty!57035 () Bool)

(declare-fun mapRes!57035 () Bool)

(assert (=> mapIsEmpty!57035 mapRes!57035))

(declare-fun b!1336116 () Bool)

(declare-fun e!760960 () Bool)

(assert (=> b!1336116 (= e!760960 tp_is_empty!36905)))

(declare-fun b!1336117 () Bool)

(declare-fun res!886768 () Bool)

(assert (=> b!1336117 (=> (not res!886768) (not e!760963))))

(declare-datatypes ((List!31216 0))(
  ( (Nil!31213) (Cons!31212 (h!32421 (_ BitVec 64)) (t!45499 List!31216)) )
))
(declare-fun arrayNoDuplicates!0 (array!90643 (_ BitVec 32) List!31216) Bool)

(assert (=> b!1336117 (= res!886768 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31213))))

(declare-fun b!1336118 () Bool)

(declare-fun res!886772 () Bool)

(assert (=> b!1336118 (=> (not res!886772) (not e!760963))))

(assert (=> b!1336118 (= res!886772 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336119 () Bool)

(declare-fun res!886774 () Bool)

(assert (=> b!1336119 (=> (not res!886774) (not e!760963))))

(assert (=> b!1336119 (= res!886774 (and (= (size!44334 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44333 _keys!1590) (size!44334 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336120 () Bool)

(declare-fun res!886773 () Bool)

(assert (=> b!1336120 (=> (not res!886773) (not e!760963))))

(assert (=> b!1336120 (= res!886773 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44333 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336121 () Bool)

(declare-fun e!760961 () Bool)

(assert (=> b!1336121 (= e!760962 (and e!760961 mapRes!57035))))

(declare-fun condMapEmpty!57035 () Bool)

(declare-fun mapDefault!57035 () ValueCell!17554)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112356 () Bool)

(assert start!112356)

(declare-fun b_free!30715 () Bool)

(declare-fun b_next!30715 () Bool)

(assert (=> start!112356 (= b_free!30715 (not b_next!30715))))

(declare-fun tp!107783 () Bool)

(declare-fun b_and!49495 () Bool)

(assert (=> start!112356 (= tp!107783 b_and!49495)))

(declare-fun b!1331046 () Bool)

(declare-fun res!883337 () Bool)

(declare-fun e!758535 () Bool)

(assert (=> b!1331046 (=> (not res!883337) (not e!758535))))

(declare-datatypes ((array!90101 0))(
  ( (array!90102 (arr!43512 (Array (_ BitVec 32) (_ BitVec 64))) (size!44063 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90101)

(declare-datatypes ((List!31018 0))(
  ( (Nil!31015) (Cons!31014 (h!32223 (_ BitVec 64)) (t!45153 List!31018)) )
))
(declare-fun arrayNoDuplicates!0 (array!90101 (_ BitVec 32) List!31018) Bool)

(assert (=> b!1331046 (= res!883337 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31015))))

(declare-fun b!1331047 () Bool)

(declare-fun res!883332 () Bool)

(assert (=> b!1331047 (=> (not res!883332) (not e!758535))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1331047 (= res!883332 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44063 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331048 () Bool)

(declare-fun e!758537 () Bool)

(declare-fun tp_is_empty!36625 () Bool)

(assert (=> b!1331048 (= e!758537 tp_is_empty!36625)))

(declare-fun res!883335 () Bool)

(assert (=> start!112356 (=> (not res!883335) (not e!758535))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112356 (= res!883335 (validMask!0 mask!1998))))

(assert (=> start!112356 e!758535))

(declare-datatypes ((V!53937 0))(
  ( (V!53938 (val!18387 Int)) )
))
(declare-datatypes ((ValueCell!17414 0))(
  ( (ValueCellFull!17414 (v!21022 V!53937)) (EmptyCell!17414) )
))
(declare-datatypes ((array!90103 0))(
  ( (array!90104 (arr!43513 (Array (_ BitVec 32) ValueCell!17414)) (size!44064 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90103)

(declare-fun e!758536 () Bool)

(declare-fun array_inv!32773 (array!90103) Bool)

(assert (=> start!112356 (and (array_inv!32773 _values!1320) e!758536)))

(assert (=> start!112356 true))

(declare-fun array_inv!32774 (array!90101) Bool)

(assert (=> start!112356 (array_inv!32774 _keys!1590)))

(assert (=> start!112356 tp!107783))

(assert (=> start!112356 tp_is_empty!36625))

(declare-fun b!1331049 () Bool)

(declare-fun res!883336 () Bool)

(assert (=> b!1331049 (=> (not res!883336) (not e!758535))))

(assert (=> b!1331049 (= res!883336 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331050 () Bool)

(declare-fun res!883330 () Bool)

(assert (=> b!1331050 (=> (not res!883330) (not e!758535))))

(assert (=> b!1331050 (= res!883330 (not (= (select (arr!43512 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331051 () Bool)

(declare-fun e!758538 () Bool)

(assert (=> b!1331051 (= e!758538 tp_is_empty!36625)))

(declare-fun b!1331052 () Bool)

(assert (=> b!1331052 (= e!758535 (not true))))

(declare-datatypes ((tuple2!23832 0))(
  ( (tuple2!23833 (_1!11926 (_ BitVec 64)) (_2!11926 V!53937)) )
))
(declare-datatypes ((List!31019 0))(
  ( (Nil!31016) (Cons!31015 (h!32224 tuple2!23832) (t!45154 List!31019)) )
))
(declare-datatypes ((ListLongMap!21501 0))(
  ( (ListLongMap!21502 (toList!10766 List!31019)) )
))
(declare-fun lt!591352 () ListLongMap!21501)

(declare-fun contains!8866 (ListLongMap!21501 (_ BitVec 64)) Bool)

(assert (=> b!1331052 (contains!8866 lt!591352 k!1153)))

(declare-fun lt!591356 () V!53937)

(declare-datatypes ((Unit!43741 0))(
  ( (Unit!43742) )
))
(declare-fun lt!591353 () Unit!43741)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!262 ((_ BitVec 64) (_ BitVec 64) V!53937 ListLongMap!21501) Unit!43741)

(assert (=> b!1331052 (= lt!591353 (lemmaInListMapAfterAddingDiffThenInBefore!262 k!1153 (select (arr!43512 _keys!1590) from!1980) lt!591356 lt!591352))))

(declare-fun lt!591355 () ListLongMap!21501)

(assert (=> b!1331052 (contains!8866 lt!591355 k!1153)))

(declare-fun lt!591354 () Unit!43741)

(declare-fun minValue!1262 () V!53937)

(assert (=> b!1331052 (= lt!591354 (lemmaInListMapAfterAddingDiffThenInBefore!262 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591355))))

(declare-fun +!4657 (ListLongMap!21501 tuple2!23832) ListLongMap!21501)

(assert (=> b!1331052 (= lt!591355 (+!4657 lt!591352 (tuple2!23833 (select (arr!43512 _keys!1590) from!1980) lt!591356)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21981 (ValueCell!17414 V!53937) V!53937)

(declare-fun dynLambda!3694 (Int (_ BitVec 64)) V!53937)

(assert (=> b!1331052 (= lt!591356 (get!21981 (select (arr!43513 _values!1320) from!1980) (dynLambda!3694 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53937)

(declare-fun getCurrentListMapNoExtraKeys!6375 (array!90101 array!90103 (_ BitVec 32) (_ BitVec 32) V!53937 V!53937 (_ BitVec 32) Int) ListLongMap!21501)

(assert (=> b!1331052 (= lt!591352 (getCurrentListMapNoExtraKeys!6375 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331053 () Bool)

(declare-fun res!883329 () Bool)

(assert (=> b!1331053 (=> (not res!883329) (not e!758535))))

(assert (=> b!1331053 (= res!883329 (and (= (size!44064 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44063 _keys!1590) (size!44064 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56611 () Bool)

(declare-fun mapRes!56611 () Bool)

(assert (=> mapIsEmpty!56611 mapRes!56611))

(declare-fun b!1331054 () Bool)

(assert (=> b!1331054 (= e!758536 (and e!758538 mapRes!56611))))

(declare-fun condMapEmpty!56611 () Bool)

(declare-fun mapDefault!56611 () ValueCell!17414)


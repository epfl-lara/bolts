; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112222 () Bool)

(assert start!112222)

(declare-fun b_free!30581 () Bool)

(declare-fun b_next!30581 () Bool)

(assert (=> start!112222 (= b_free!30581 (not b_next!30581))))

(declare-fun tp!107381 () Bool)

(declare-fun b_and!49241 () Bool)

(assert (=> start!112222 (= tp!107381 b_and!49241)))

(declare-fun b!1328563 () Bool)

(declare-fun res!881573 () Bool)

(declare-fun e!757532 () Bool)

(assert (=> b!1328563 (=> (not res!881573) (not e!757532))))

(declare-datatypes ((array!89841 0))(
  ( (array!89842 (arr!43382 (Array (_ BitVec 32) (_ BitVec 64))) (size!43933 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89841)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89841 (_ BitVec 32)) Bool)

(assert (=> b!1328563 (= res!881573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328564 () Bool)

(declare-fun res!881572 () Bool)

(assert (=> b!1328564 (=> (not res!881572) (not e!757532))))

(declare-datatypes ((List!30917 0))(
  ( (Nil!30914) (Cons!30913 (h!32122 (_ BitVec 64)) (t!44930 List!30917)) )
))
(declare-fun arrayNoDuplicates!0 (array!89841 (_ BitVec 32) List!30917) Bool)

(assert (=> b!1328564 (= res!881572 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30914))))

(declare-fun b!1328565 () Bool)

(declare-fun res!881569 () Bool)

(assert (=> b!1328565 (=> (not res!881569) (not e!757532))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun from!1980 () (_ BitVec 32))

(assert (=> b!1328565 (= res!881569 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43933 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328567 () Bool)

(declare-fun res!881571 () Bool)

(assert (=> b!1328567 (=> (not res!881571) (not e!757532))))

(declare-datatypes ((V!53757 0))(
  ( (V!53758 (val!18320 Int)) )
))
(declare-datatypes ((ValueCell!17347 0))(
  ( (ValueCellFull!17347 (v!20955 V!53757)) (EmptyCell!17347) )
))
(declare-datatypes ((array!89843 0))(
  ( (array!89844 (arr!43383 (Array (_ BitVec 32) ValueCell!17347)) (size!43934 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89843)

(assert (=> b!1328567 (= res!881571 (and (= (size!43934 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43933 _keys!1590) (size!43934 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56410 () Bool)

(declare-fun mapRes!56410 () Bool)

(declare-fun tp!107380 () Bool)

(declare-fun e!757531 () Bool)

(assert (=> mapNonEmpty!56410 (= mapRes!56410 (and tp!107380 e!757531))))

(declare-fun mapKey!56410 () (_ BitVec 32))

(declare-fun mapRest!56410 () (Array (_ BitVec 32) ValueCell!17347))

(declare-fun mapValue!56410 () ValueCell!17347)

(assert (=> mapNonEmpty!56410 (= (arr!43383 _values!1320) (store mapRest!56410 mapKey!56410 mapValue!56410))))

(declare-fun b!1328568 () Bool)

(assert (=> b!1328568 (= e!757532 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!590801 () Bool)

(declare-fun minValue!1262 () V!53757)

(declare-fun zeroValue!1262 () V!53757)

(declare-datatypes ((tuple2!23730 0))(
  ( (tuple2!23731 (_1!11875 (_ BitVec 64)) (_2!11875 V!53757)) )
))
(declare-datatypes ((List!30918 0))(
  ( (Nil!30915) (Cons!30914 (h!32123 tuple2!23730) (t!44931 List!30918)) )
))
(declare-datatypes ((ListLongMap!21399 0))(
  ( (ListLongMap!21400 (toList!10715 List!30918)) )
))
(declare-fun contains!8815 (ListLongMap!21399 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5647 (array!89841 array!89843 (_ BitVec 32) (_ BitVec 32) V!53757 V!53757 (_ BitVec 32) Int) ListLongMap!21399)

(assert (=> b!1328568 (= lt!590801 (contains!8815 (getCurrentListMap!5647 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328569 () Bool)

(declare-fun tp_is_empty!36491 () Bool)

(assert (=> b!1328569 (= e!757531 tp_is_empty!36491)))

(declare-fun mapIsEmpty!56410 () Bool)

(assert (=> mapIsEmpty!56410 mapRes!56410))

(declare-fun b!1328570 () Bool)

(declare-fun e!757533 () Bool)

(assert (=> b!1328570 (= e!757533 tp_is_empty!36491)))

(declare-fun res!881570 () Bool)

(assert (=> start!112222 (=> (not res!881570) (not e!757532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112222 (= res!881570 (validMask!0 mask!1998))))

(assert (=> start!112222 e!757532))

(declare-fun e!757530 () Bool)

(declare-fun array_inv!32687 (array!89843) Bool)

(assert (=> start!112222 (and (array_inv!32687 _values!1320) e!757530)))

(assert (=> start!112222 true))

(declare-fun array_inv!32688 (array!89841) Bool)

(assert (=> start!112222 (array_inv!32688 _keys!1590)))

(assert (=> start!112222 tp!107381))

(assert (=> start!112222 tp_is_empty!36491))

(declare-fun b!1328566 () Bool)

(assert (=> b!1328566 (= e!757530 (and e!757533 mapRes!56410))))

(declare-fun condMapEmpty!56410 () Bool)

(declare-fun mapDefault!56410 () ValueCell!17347)


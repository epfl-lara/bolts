; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112620 () Bool)

(assert start!112620)

(declare-fun b_free!30979 () Bool)

(declare-fun b_next!30979 () Bool)

(assert (=> start!112620 (= b_free!30979 (not b_next!30979))))

(declare-fun tp!108574 () Bool)

(declare-fun b_and!49897 () Bool)

(assert (=> start!112620 (= tp!108574 b_and!49897)))

(declare-fun b!1335432 () Bool)

(declare-fun res!886391 () Bool)

(declare-fun e!760599 () Bool)

(assert (=> b!1335432 (=> (not res!886391) (not e!760599))))

(declare-datatypes ((V!54289 0))(
  ( (V!54290 (val!18519 Int)) )
))
(declare-datatypes ((ValueCell!17546 0))(
  ( (ValueCellFull!17546 (v!21154 V!54289)) (EmptyCell!17546) )
))
(declare-datatypes ((array!90615 0))(
  ( (array!90616 (arr!43769 (Array (_ BitVec 32) ValueCell!17546)) (size!44320 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90615)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90617 0))(
  ( (array!90618 (arr!43770 (Array (_ BitVec 32) (_ BitVec 64))) (size!44321 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90617)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54289)

(declare-fun zeroValue!1262 () V!54289)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24036 0))(
  ( (tuple2!24037 (_1!12028 (_ BitVec 64)) (_2!12028 V!54289)) )
))
(declare-datatypes ((List!31206 0))(
  ( (Nil!31203) (Cons!31202 (h!32411 tuple2!24036) (t!45477 List!31206)) )
))
(declare-datatypes ((ListLongMap!21705 0))(
  ( (ListLongMap!21706 (toList!10868 List!31206)) )
))
(declare-fun contains!8967 (ListLongMap!21705 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5778 (array!90617 array!90615 (_ BitVec 32) (_ BitVec 32) V!54289 V!54289 (_ BitVec 32) Int) ListLongMap!21705)

(assert (=> b!1335432 (= res!886391 (contains!8967 (getCurrentListMap!5778 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1335433 () Bool)

(declare-fun res!886396 () Bool)

(assert (=> b!1335433 (=> (not res!886396) (not e!760599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335433 (= res!886396 (validKeyInArray!0 (select (arr!43770 _keys!1590) from!1980)))))

(declare-fun b!1335434 () Bool)

(declare-fun res!886395 () Bool)

(assert (=> b!1335434 (=> (not res!886395) (not e!760599))))

(assert (=> b!1335434 (= res!886395 (not (= (select (arr!43770 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1335435 () Bool)

(declare-fun res!886392 () Bool)

(assert (=> b!1335435 (=> (not res!886392) (not e!760599))))

(assert (=> b!1335435 (= res!886392 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1335436 () Bool)

(declare-fun res!886397 () Bool)

(assert (=> b!1335436 (=> (not res!886397) (not e!760599))))

(assert (=> b!1335436 (= res!886397 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44321 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335437 () Bool)

(declare-fun res!886394 () Bool)

(assert (=> b!1335437 (=> (not res!886394) (not e!760599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90617 (_ BitVec 32)) Bool)

(assert (=> b!1335437 (= res!886394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!57007 () Bool)

(declare-fun mapRes!57007 () Bool)

(declare-fun tp!108575 () Bool)

(declare-fun e!760597 () Bool)

(assert (=> mapNonEmpty!57007 (= mapRes!57007 (and tp!108575 e!760597))))

(declare-fun mapValue!57007 () ValueCell!17546)

(declare-fun mapRest!57007 () (Array (_ BitVec 32) ValueCell!17546))

(declare-fun mapKey!57007 () (_ BitVec 32))

(assert (=> mapNonEmpty!57007 (= (arr!43769 _values!1320) (store mapRest!57007 mapKey!57007 mapValue!57007))))

(declare-fun b!1335438 () Bool)

(declare-fun tp_is_empty!36889 () Bool)

(assert (=> b!1335438 (= e!760597 tp_is_empty!36889)))

(declare-fun b!1335439 () Bool)

(declare-fun res!886390 () Bool)

(assert (=> b!1335439 (=> (not res!886390) (not e!760599))))

(assert (=> b!1335439 (= res!886390 (and (= (size!44320 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44321 _keys!1590) (size!44320 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!886393 () Bool)

(assert (=> start!112620 (=> (not res!886393) (not e!760599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112620 (= res!886393 (validMask!0 mask!1998))))

(assert (=> start!112620 e!760599))

(declare-fun e!760600 () Bool)

(declare-fun array_inv!32943 (array!90615) Bool)

(assert (=> start!112620 (and (array_inv!32943 _values!1320) e!760600)))

(assert (=> start!112620 true))

(declare-fun array_inv!32944 (array!90617) Bool)

(assert (=> start!112620 (array_inv!32944 _keys!1590)))

(assert (=> start!112620 tp!108574))

(assert (=> start!112620 tp_is_empty!36889))

(declare-fun b!1335440 () Bool)

(declare-fun e!760598 () Bool)

(assert (=> b!1335440 (= e!760600 (and e!760598 mapRes!57007))))

(declare-fun condMapEmpty!57007 () Bool)

(declare-fun mapDefault!57007 () ValueCell!17546)


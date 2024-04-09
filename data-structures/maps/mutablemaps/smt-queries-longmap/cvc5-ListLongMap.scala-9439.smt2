; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112278 () Bool)

(assert start!112278)

(declare-fun b_free!30637 () Bool)

(declare-fun b_next!30637 () Bool)

(assert (=> start!112278 (= b_free!30637 (not b_next!30637))))

(declare-fun tp!107548 () Bool)

(declare-fun b_and!49339 () Bool)

(assert (=> start!112278 (= tp!107548 b_and!49339)))

(declare-fun b!1329564 () Bool)

(declare-fun res!882276 () Bool)

(declare-fun e!757951 () Bool)

(assert (=> b!1329564 (=> (not res!882276) (not e!757951))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89949 0))(
  ( (array!89950 (arr!43436 (Array (_ BitVec 32) (_ BitVec 64))) (size!43987 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89949)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329564 (= res!882276 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43987 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329565 () Bool)

(declare-fun res!882281 () Bool)

(assert (=> b!1329565 (=> (not res!882281) (not e!757951))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89949 (_ BitVec 32)) Bool)

(assert (=> b!1329565 (= res!882281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapIsEmpty!56494 () Bool)

(declare-fun mapRes!56494 () Bool)

(assert (=> mapIsEmpty!56494 mapRes!56494))

(declare-fun b!1329566 () Bool)

(declare-fun res!882278 () Bool)

(assert (=> b!1329566 (=> (not res!882278) (not e!757951))))

(declare-datatypes ((V!53833 0))(
  ( (V!53834 (val!18348 Int)) )
))
(declare-datatypes ((ValueCell!17375 0))(
  ( (ValueCellFull!17375 (v!20983 V!53833)) (EmptyCell!17375) )
))
(declare-datatypes ((array!89951 0))(
  ( (array!89952 (arr!43437 (Array (_ BitVec 32) ValueCell!17375)) (size!43988 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89951)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53833)

(declare-fun zeroValue!1262 () V!53833)

(declare-datatypes ((tuple2!23768 0))(
  ( (tuple2!23769 (_1!11894 (_ BitVec 64)) (_2!11894 V!53833)) )
))
(declare-datatypes ((List!30958 0))(
  ( (Nil!30955) (Cons!30954 (h!32163 tuple2!23768) (t!45015 List!30958)) )
))
(declare-datatypes ((ListLongMap!21437 0))(
  ( (ListLongMap!21438 (toList!10734 List!30958)) )
))
(declare-fun contains!8834 (ListLongMap!21437 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5666 (array!89949 array!89951 (_ BitVec 32) (_ BitVec 32) V!53833 V!53833 (_ BitVec 32) Int) ListLongMap!21437)

(assert (=> b!1329566 (= res!882278 (contains!8834 (getCurrentListMap!5666 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329567 () Bool)

(declare-fun res!882283 () Bool)

(assert (=> b!1329567 (=> (not res!882283) (not e!757951))))

(declare-datatypes ((List!30959 0))(
  ( (Nil!30956) (Cons!30955 (h!32164 (_ BitVec 64)) (t!45016 List!30959)) )
))
(declare-fun arrayNoDuplicates!0 (array!89949 (_ BitVec 32) List!30959) Bool)

(assert (=> b!1329567 (= res!882283 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30956))))

(declare-fun b!1329568 () Bool)

(declare-fun res!882284 () Bool)

(assert (=> b!1329568 (=> (not res!882284) (not e!757951))))

(assert (=> b!1329568 (= res!882284 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56494 () Bool)

(declare-fun tp!107549 () Bool)

(declare-fun e!757953 () Bool)

(assert (=> mapNonEmpty!56494 (= mapRes!56494 (and tp!107549 e!757953))))

(declare-fun mapValue!56494 () ValueCell!17375)

(declare-fun mapRest!56494 () (Array (_ BitVec 32) ValueCell!17375))

(declare-fun mapKey!56494 () (_ BitVec 32))

(assert (=> mapNonEmpty!56494 (= (arr!43437 _values!1320) (store mapRest!56494 mapKey!56494 mapValue!56494))))

(declare-fun res!882279 () Bool)

(assert (=> start!112278 (=> (not res!882279) (not e!757951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112278 (= res!882279 (validMask!0 mask!1998))))

(assert (=> start!112278 e!757951))

(declare-fun e!757952 () Bool)

(declare-fun array_inv!32721 (array!89951) Bool)

(assert (=> start!112278 (and (array_inv!32721 _values!1320) e!757952)))

(assert (=> start!112278 true))

(declare-fun array_inv!32722 (array!89949) Bool)

(assert (=> start!112278 (array_inv!32722 _keys!1590)))

(assert (=> start!112278 tp!107548))

(declare-fun tp_is_empty!36547 () Bool)

(assert (=> start!112278 tp_is_empty!36547))

(declare-fun b!1329569 () Bool)

(declare-fun e!757954 () Bool)

(assert (=> b!1329569 (= e!757952 (and e!757954 mapRes!56494))))

(declare-fun condMapEmpty!56494 () Bool)

(declare-fun mapDefault!56494 () ValueCell!17375)


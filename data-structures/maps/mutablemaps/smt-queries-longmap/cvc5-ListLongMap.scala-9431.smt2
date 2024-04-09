; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112230 () Bool)

(assert start!112230)

(declare-fun b_free!30589 () Bool)

(declare-fun b_next!30589 () Bool)

(assert (=> start!112230 (= b_free!30589 (not b_next!30589))))

(declare-fun tp!107404 () Bool)

(declare-fun b_and!49249 () Bool)

(assert (=> start!112230 (= tp!107404 b_and!49249)))

(declare-fun b!1328665 () Bool)

(declare-fun e!757590 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun from!1980 () (_ BitVec 32))

(assert (=> b!1328665 (= e!757590 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56422 () Bool)

(declare-fun mapRes!56422 () Bool)

(declare-fun tp!107405 () Bool)

(declare-fun e!757592 () Bool)

(assert (=> mapNonEmpty!56422 (= mapRes!56422 (and tp!107405 e!757592))))

(declare-datatypes ((V!53769 0))(
  ( (V!53770 (val!18324 Int)) )
))
(declare-datatypes ((ValueCell!17351 0))(
  ( (ValueCellFull!17351 (v!20959 V!53769)) (EmptyCell!17351) )
))
(declare-datatypes ((array!89855 0))(
  ( (array!89856 (arr!43389 (Array (_ BitVec 32) ValueCell!17351)) (size!43940 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89855)

(declare-fun mapRest!56422 () (Array (_ BitVec 32) ValueCell!17351))

(declare-fun mapKey!56422 () (_ BitVec 32))

(declare-fun mapValue!56422 () ValueCell!17351)

(assert (=> mapNonEmpty!56422 (= (arr!43389 _values!1320) (store mapRest!56422 mapKey!56422 mapValue!56422))))

(declare-fun res!881636 () Bool)

(assert (=> start!112230 (=> (not res!881636) (not e!757590))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112230 (= res!881636 (validMask!0 mask!1998))))

(assert (=> start!112230 e!757590))

(declare-fun e!757593 () Bool)

(declare-fun array_inv!32691 (array!89855) Bool)

(assert (=> start!112230 (and (array_inv!32691 _values!1320) e!757593)))

(assert (=> start!112230 true))

(declare-datatypes ((array!89857 0))(
  ( (array!89858 (arr!43390 (Array (_ BitVec 32) (_ BitVec 64))) (size!43941 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89857)

(declare-fun array_inv!32692 (array!89857) Bool)

(assert (=> start!112230 (array_inv!32692 _keys!1590)))

(assert (=> start!112230 tp!107404))

(declare-fun tp_is_empty!36499 () Bool)

(assert (=> start!112230 tp_is_empty!36499))

(declare-fun b!1328666 () Bool)

(declare-fun res!881635 () Bool)

(assert (=> b!1328666 (=> (not res!881635) (not e!757590))))

(assert (=> b!1328666 (= res!881635 (and (= (size!43940 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43941 _keys!1590) (size!43940 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328667 () Bool)

(declare-fun e!757591 () Bool)

(assert (=> b!1328667 (= e!757591 tp_is_empty!36499)))

(declare-fun b!1328668 () Bool)

(declare-fun res!881642 () Bool)

(assert (=> b!1328668 (=> (not res!881642) (not e!757590))))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1328668 (= res!881642 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43941 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328669 () Bool)

(declare-fun res!881637 () Bool)

(assert (=> b!1328669 (=> (not res!881637) (not e!757590))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53769)

(declare-fun zeroValue!1262 () V!53769)

(declare-datatypes ((tuple2!23734 0))(
  ( (tuple2!23735 (_1!11877 (_ BitVec 64)) (_2!11877 V!53769)) )
))
(declare-datatypes ((List!30922 0))(
  ( (Nil!30919) (Cons!30918 (h!32127 tuple2!23734) (t!44935 List!30922)) )
))
(declare-datatypes ((ListLongMap!21403 0))(
  ( (ListLongMap!21404 (toList!10717 List!30922)) )
))
(declare-fun contains!8817 (ListLongMap!21403 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5649 (array!89857 array!89855 (_ BitVec 32) (_ BitVec 32) V!53769 V!53769 (_ BitVec 32) Int) ListLongMap!21403)

(assert (=> b!1328669 (= res!881637 (contains!8817 (getCurrentListMap!5649 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328670 () Bool)

(declare-fun res!881639 () Bool)

(assert (=> b!1328670 (=> (not res!881639) (not e!757590))))

(declare-datatypes ((List!30923 0))(
  ( (Nil!30920) (Cons!30919 (h!32128 (_ BitVec 64)) (t!44936 List!30923)) )
))
(declare-fun arrayNoDuplicates!0 (array!89857 (_ BitVec 32) List!30923) Bool)

(assert (=> b!1328670 (= res!881639 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30920))))

(declare-fun b!1328671 () Bool)

(declare-fun res!881638 () Bool)

(assert (=> b!1328671 (=> (not res!881638) (not e!757590))))

(assert (=> b!1328671 (= res!881638 (not (= (select (arr!43390 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1328672 () Bool)

(assert (=> b!1328672 (= e!757592 tp_is_empty!36499)))

(declare-fun mapIsEmpty!56422 () Bool)

(assert (=> mapIsEmpty!56422 mapRes!56422))

(declare-fun b!1328673 () Bool)

(assert (=> b!1328673 (= e!757593 (and e!757591 mapRes!56422))))

(declare-fun condMapEmpty!56422 () Bool)

(declare-fun mapDefault!56422 () ValueCell!17351)


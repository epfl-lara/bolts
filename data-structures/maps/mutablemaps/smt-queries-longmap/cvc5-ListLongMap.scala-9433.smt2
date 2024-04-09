; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112242 () Bool)

(assert start!112242)

(declare-fun b_free!30601 () Bool)

(declare-fun b_next!30601 () Bool)

(assert (=> start!112242 (= b_free!30601 (not b_next!30601))))

(declare-fun tp!107440 () Bool)

(declare-fun b_and!49267 () Bool)

(assert (=> start!112242 (= tp!107440 b_and!49267)))

(declare-fun b!1328880 () Bool)

(declare-fun e!757681 () Bool)

(declare-fun tp_is_empty!36511 () Bool)

(assert (=> b!1328880 (= e!757681 tp_is_empty!36511)))

(declare-fun b!1328881 () Bool)

(declare-fun res!881790 () Bool)

(declare-fun e!757682 () Bool)

(assert (=> b!1328881 (=> (not res!881790) (not e!757682))))

(declare-datatypes ((V!53785 0))(
  ( (V!53786 (val!18330 Int)) )
))
(declare-datatypes ((ValueCell!17357 0))(
  ( (ValueCellFull!17357 (v!20965 V!53785)) (EmptyCell!17357) )
))
(declare-datatypes ((array!89879 0))(
  ( (array!89880 (arr!43401 (Array (_ BitVec 32) ValueCell!17357)) (size!43952 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89879)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89881 0))(
  ( (array!89882 (arr!43402 (Array (_ BitVec 32) (_ BitVec 64))) (size!43953 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89881)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53785)

(declare-fun zeroValue!1262 () V!53785)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23744 0))(
  ( (tuple2!23745 (_1!11882 (_ BitVec 64)) (_2!11882 V!53785)) )
))
(declare-datatypes ((List!30933 0))(
  ( (Nil!30930) (Cons!30929 (h!32138 tuple2!23744) (t!44954 List!30933)) )
))
(declare-datatypes ((ListLongMap!21413 0))(
  ( (ListLongMap!21414 (toList!10722 List!30933)) )
))
(declare-fun contains!8822 (ListLongMap!21413 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5654 (array!89881 array!89879 (_ BitVec 32) (_ BitVec 32) V!53785 V!53785 (_ BitVec 32) Int) ListLongMap!21413)

(assert (=> b!1328881 (= res!881790 (contains!8822 (getCurrentListMap!5654 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56440 () Bool)

(declare-fun mapRes!56440 () Bool)

(assert (=> mapIsEmpty!56440 mapRes!56440))

(declare-fun b!1328883 () Bool)

(declare-fun res!881798 () Bool)

(assert (=> b!1328883 (=> (not res!881798) (not e!757682))))

(assert (=> b!1328883 (= res!881798 (and (= (size!43952 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43953 _keys!1590) (size!43952 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328884 () Bool)

(declare-fun res!881796 () Bool)

(assert (=> b!1328884 (=> (not res!881796) (not e!757682))))

(declare-datatypes ((List!30934 0))(
  ( (Nil!30931) (Cons!30930 (h!32139 (_ BitVec 64)) (t!44955 List!30934)) )
))
(declare-fun arrayNoDuplicates!0 (array!89881 (_ BitVec 32) List!30934) Bool)

(assert (=> b!1328884 (= res!881796 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30931))))

(declare-fun mapNonEmpty!56440 () Bool)

(declare-fun tp!107441 () Bool)

(assert (=> mapNonEmpty!56440 (= mapRes!56440 (and tp!107441 e!757681))))

(declare-fun mapRest!56440 () (Array (_ BitVec 32) ValueCell!17357))

(declare-fun mapKey!56440 () (_ BitVec 32))

(declare-fun mapValue!56440 () ValueCell!17357)

(assert (=> mapNonEmpty!56440 (= (arr!43401 _values!1320) (store mapRest!56440 mapKey!56440 mapValue!56440))))

(declare-fun b!1328885 () Bool)

(declare-fun res!881795 () Bool)

(assert (=> b!1328885 (=> (not res!881795) (not e!757682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328885 (= res!881795 (validKeyInArray!0 (select (arr!43402 _keys!1590) from!1980)))))

(declare-fun b!1328886 () Bool)

(declare-fun res!881797 () Bool)

(assert (=> b!1328886 (=> (not res!881797) (not e!757682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89881 (_ BitVec 32)) Bool)

(assert (=> b!1328886 (= res!881797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328887 () Bool)

(declare-fun e!757680 () Bool)

(declare-fun e!757683 () Bool)

(assert (=> b!1328887 (= e!757680 (and e!757683 mapRes!56440))))

(declare-fun condMapEmpty!56440 () Bool)

(declare-fun mapDefault!56440 () ValueCell!17357)


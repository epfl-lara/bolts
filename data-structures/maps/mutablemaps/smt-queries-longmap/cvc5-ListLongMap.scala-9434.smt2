; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112248 () Bool)

(assert start!112248)

(declare-fun b_free!30607 () Bool)

(declare-fun b_next!30607 () Bool)

(assert (=> start!112248 (= b_free!30607 (not b_next!30607))))

(declare-fun tp!107459 () Bool)

(declare-fun b_and!49279 () Bool)

(assert (=> start!112248 (= tp!107459 b_and!49279)))

(declare-fun b!1328995 () Bool)

(declare-fun res!881872 () Bool)

(declare-fun e!757725 () Bool)

(assert (=> b!1328995 (=> (not res!881872) (not e!757725))))

(declare-datatypes ((V!53793 0))(
  ( (V!53794 (val!18333 Int)) )
))
(declare-datatypes ((ValueCell!17360 0))(
  ( (ValueCellFull!17360 (v!20968 V!53793)) (EmptyCell!17360) )
))
(declare-datatypes ((array!89891 0))(
  ( (array!89892 (arr!43407 (Array (_ BitVec 32) ValueCell!17360)) (size!43958 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89891)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89893 0))(
  ( (array!89894 (arr!43408 (Array (_ BitVec 32) (_ BitVec 64))) (size!43959 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89893)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53793)

(declare-fun zeroValue!1262 () V!53793)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23748 0))(
  ( (tuple2!23749 (_1!11884 (_ BitVec 64)) (_2!11884 V!53793)) )
))
(declare-datatypes ((List!30937 0))(
  ( (Nil!30934) (Cons!30933 (h!32142 tuple2!23748) (t!44964 List!30937)) )
))
(declare-datatypes ((ListLongMap!21417 0))(
  ( (ListLongMap!21418 (toList!10724 List!30937)) )
))
(declare-fun contains!8824 (ListLongMap!21417 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5656 (array!89893 array!89891 (_ BitVec 32) (_ BitVec 32) V!53793 V!53793 (_ BitVec 32) Int) ListLongMap!21417)

(assert (=> b!1328995 (= res!881872 (contains!8824 (getCurrentListMap!5656 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328996 () Bool)

(declare-fun res!881875 () Bool)

(assert (=> b!1328996 (=> (not res!881875) (not e!757725))))

(assert (=> b!1328996 (= res!881875 (and (= (size!43958 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43959 _keys!1590) (size!43958 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56449 () Bool)

(declare-fun mapRes!56449 () Bool)

(assert (=> mapIsEmpty!56449 mapRes!56449))

(declare-fun b!1328997 () Bool)

(declare-fun res!881879 () Bool)

(assert (=> b!1328997 (=> (not res!881879) (not e!757725))))

(assert (=> b!1328997 (= res!881879 (not (= (select (arr!43408 _keys!1590) from!1980) k!1153)))))

(declare-fun mapNonEmpty!56449 () Bool)

(declare-fun tp!107458 () Bool)

(declare-fun e!757726 () Bool)

(assert (=> mapNonEmpty!56449 (= mapRes!56449 (and tp!107458 e!757726))))

(declare-fun mapKey!56449 () (_ BitVec 32))

(declare-fun mapRest!56449 () (Array (_ BitVec 32) ValueCell!17360))

(declare-fun mapValue!56449 () ValueCell!17360)

(assert (=> mapNonEmpty!56449 (= (arr!43407 _values!1320) (store mapRest!56449 mapKey!56449 mapValue!56449))))

(declare-fun b!1328998 () Bool)

(declare-fun res!881878 () Bool)

(assert (=> b!1328998 (=> (not res!881878) (not e!757725))))

(declare-datatypes ((List!30938 0))(
  ( (Nil!30935) (Cons!30934 (h!32143 (_ BitVec 64)) (t!44965 List!30938)) )
))
(declare-fun arrayNoDuplicates!0 (array!89893 (_ BitVec 32) List!30938) Bool)

(assert (=> b!1328998 (= res!881878 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30935))))

(declare-fun res!881871 () Bool)

(assert (=> start!112248 (=> (not res!881871) (not e!757725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112248 (= res!881871 (validMask!0 mask!1998))))

(assert (=> start!112248 e!757725))

(declare-fun e!757727 () Bool)

(declare-fun array_inv!32701 (array!89891) Bool)

(assert (=> start!112248 (and (array_inv!32701 _values!1320) e!757727)))

(assert (=> start!112248 true))

(declare-fun array_inv!32702 (array!89893) Bool)

(assert (=> start!112248 (array_inv!32702 _keys!1590)))

(assert (=> start!112248 tp!107459))

(declare-fun tp_is_empty!36517 () Bool)

(assert (=> start!112248 tp_is_empty!36517))

(declare-fun b!1328994 () Bool)

(declare-fun res!881877 () Bool)

(assert (=> b!1328994 (=> (not res!881877) (not e!757725))))

(assert (=> b!1328994 (= res!881877 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1328999 () Bool)

(assert (=> b!1328999 (= e!757726 tp_is_empty!36517)))

(declare-fun b!1329000 () Bool)

(declare-fun res!881876 () Bool)

(assert (=> b!1329000 (=> (not res!881876) (not e!757725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329000 (= res!881876 (validKeyInArray!0 (select (arr!43408 _keys!1590) from!1980)))))

(declare-fun b!1329001 () Bool)

(declare-fun res!881874 () Bool)

(assert (=> b!1329001 (=> (not res!881874) (not e!757725))))

(assert (=> b!1329001 (= res!881874 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43959 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329002 () Bool)

(declare-fun res!881873 () Bool)

(assert (=> b!1329002 (=> (not res!881873) (not e!757725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89893 (_ BitVec 32)) Bool)

(assert (=> b!1329002 (= res!881873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329003 () Bool)

(declare-fun e!757728 () Bool)

(assert (=> b!1329003 (= e!757728 tp_is_empty!36517)))

(declare-fun b!1329004 () Bool)

(assert (=> b!1329004 (= e!757725 (not true))))

(declare-fun lt!590834 () ListLongMap!21417)

(assert (=> b!1329004 (contains!8824 lt!590834 k!1153)))

(declare-datatypes ((Unit!43669 0))(
  ( (Unit!43670) )
))
(declare-fun lt!590833 () Unit!43669)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!226 ((_ BitVec 64) (_ BitVec 64) V!53793 ListLongMap!21417) Unit!43669)

(assert (=> b!1329004 (= lt!590833 (lemmaInListMapAfterAddingDiffThenInBefore!226 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590834))))

(declare-fun +!4621 (ListLongMap!21417 tuple2!23748) ListLongMap!21417)

(declare-fun getCurrentListMapNoExtraKeys!6339 (array!89893 array!89891 (_ BitVec 32) (_ BitVec 32) V!53793 V!53793 (_ BitVec 32) Int) ListLongMap!21417)

(declare-fun get!21909 (ValueCell!17360 V!53793) V!53793)

(declare-fun dynLambda!3658 (Int (_ BitVec 64)) V!53793)

(assert (=> b!1329004 (= lt!590834 (+!4621 (getCurrentListMapNoExtraKeys!6339 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23749 (select (arr!43408 _keys!1590) from!1980) (get!21909 (select (arr!43407 _values!1320) from!1980) (dynLambda!3658 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329005 () Bool)

(assert (=> b!1329005 (= e!757727 (and e!757728 mapRes!56449))))

(declare-fun condMapEmpty!56449 () Bool)

(declare-fun mapDefault!56449 () ValueCell!17360)


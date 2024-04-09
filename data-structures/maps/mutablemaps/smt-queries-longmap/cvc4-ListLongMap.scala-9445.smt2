; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112318 () Bool)

(assert start!112318)

(declare-fun b_free!30677 () Bool)

(declare-fun b_next!30677 () Bool)

(assert (=> start!112318 (= b_free!30677 (not b_next!30677))))

(declare-fun tp!107669 () Bool)

(declare-fun b_and!49419 () Bool)

(assert (=> start!112318 (= tp!107669 b_and!49419)))

(declare-fun b!1330324 () Bool)

(declare-fun e!758252 () Bool)

(assert (=> b!1330324 (= e!758252 (not true))))

(declare-datatypes ((V!53885 0))(
  ( (V!53886 (val!18368 Int)) )
))
(declare-datatypes ((tuple2!23802 0))(
  ( (tuple2!23803 (_1!11911 (_ BitVec 64)) (_2!11911 V!53885)) )
))
(declare-datatypes ((List!30990 0))(
  ( (Nil!30987) (Cons!30986 (h!32195 tuple2!23802) (t!45087 List!30990)) )
))
(declare-datatypes ((ListLongMap!21471 0))(
  ( (ListLongMap!21472 (toList!10751 List!30990)) )
))
(declare-fun lt!591071 () ListLongMap!21471)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8851 (ListLongMap!21471 (_ BitVec 64)) Bool)

(assert (=> b!1330324 (contains!8851 lt!591071 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90029 0))(
  ( (array!90030 (arr!43476 (Array (_ BitVec 32) (_ BitVec 64))) (size!44027 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90029)

(declare-fun lt!591069 () V!53885)

(declare-datatypes ((Unit!43715 0))(
  ( (Unit!43716) )
))
(declare-fun lt!591067 () Unit!43715)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!249 ((_ BitVec 64) (_ BitVec 64) V!53885 ListLongMap!21471) Unit!43715)

(assert (=> b!1330324 (= lt!591067 (lemmaInListMapAfterAddingDiffThenInBefore!249 k!1153 (select (arr!43476 _keys!1590) from!1980) lt!591069 lt!591071))))

(declare-fun lt!591068 () ListLongMap!21471)

(assert (=> b!1330324 (contains!8851 lt!591068 k!1153)))

(declare-fun minValue!1262 () V!53885)

(declare-fun lt!591070 () Unit!43715)

(assert (=> b!1330324 (= lt!591070 (lemmaInListMapAfterAddingDiffThenInBefore!249 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591068))))

(declare-fun +!4644 (ListLongMap!21471 tuple2!23802) ListLongMap!21471)

(assert (=> b!1330324 (= lt!591068 (+!4644 lt!591071 (tuple2!23803 (select (arr!43476 _keys!1590) from!1980) lt!591069)))))

(declare-datatypes ((ValueCell!17395 0))(
  ( (ValueCellFull!17395 (v!21003 V!53885)) (EmptyCell!17395) )
))
(declare-datatypes ((array!90031 0))(
  ( (array!90032 (arr!43477 (Array (_ BitVec 32) ValueCell!17395)) (size!44028 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90031)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21954 (ValueCell!17395 V!53885) V!53885)

(declare-fun dynLambda!3681 (Int (_ BitVec 64)) V!53885)

(assert (=> b!1330324 (= lt!591069 (get!21954 (select (arr!43477 _values!1320) from!1980) (dynLambda!3681 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53885)

(declare-fun getCurrentListMapNoExtraKeys!6362 (array!90029 array!90031 (_ BitVec 32) (_ BitVec 32) V!53885 V!53885 (_ BitVec 32) Int) ListLongMap!21471)

(assert (=> b!1330324 (= lt!591071 (getCurrentListMapNoExtraKeys!6362 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330325 () Bool)

(declare-fun res!882821 () Bool)

(assert (=> b!1330325 (=> (not res!882821) (not e!758252))))

(assert (=> b!1330325 (= res!882821 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44027 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330326 () Bool)

(declare-fun e!758251 () Bool)

(declare-fun tp_is_empty!36587 () Bool)

(assert (=> b!1330326 (= e!758251 tp_is_empty!36587)))

(declare-fun b!1330327 () Bool)

(declare-fun res!882816 () Bool)

(assert (=> b!1330327 (=> (not res!882816) (not e!758252))))

(assert (=> b!1330327 (= res!882816 (and (= (size!44028 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44027 _keys!1590) (size!44028 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!882818 () Bool)

(assert (=> start!112318 (=> (not res!882818) (not e!758252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112318 (= res!882818 (validMask!0 mask!1998))))

(assert (=> start!112318 e!758252))

(declare-fun e!758253 () Bool)

(declare-fun array_inv!32753 (array!90031) Bool)

(assert (=> start!112318 (and (array_inv!32753 _values!1320) e!758253)))

(assert (=> start!112318 true))

(declare-fun array_inv!32754 (array!90029) Bool)

(assert (=> start!112318 (array_inv!32754 _keys!1590)))

(assert (=> start!112318 tp!107669))

(assert (=> start!112318 tp_is_empty!36587))

(declare-fun b!1330328 () Bool)

(declare-fun res!882817 () Bool)

(assert (=> b!1330328 (=> (not res!882817) (not e!758252))))

(assert (=> b!1330328 (= res!882817 (not (= (select (arr!43476 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1330329 () Bool)

(declare-fun e!758250 () Bool)

(assert (=> b!1330329 (= e!758250 tp_is_empty!36587)))

(declare-fun b!1330330 () Bool)

(declare-fun res!882822 () Bool)

(assert (=> b!1330330 (=> (not res!882822) (not e!758252))))

(assert (=> b!1330330 (= res!882822 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56554 () Bool)

(declare-fun mapRes!56554 () Bool)

(declare-fun tp!107668 () Bool)

(assert (=> mapNonEmpty!56554 (= mapRes!56554 (and tp!107668 e!758250))))

(declare-fun mapKey!56554 () (_ BitVec 32))

(declare-fun mapValue!56554 () ValueCell!17395)

(declare-fun mapRest!56554 () (Array (_ BitVec 32) ValueCell!17395))

(assert (=> mapNonEmpty!56554 (= (arr!43477 _values!1320) (store mapRest!56554 mapKey!56554 mapValue!56554))))

(declare-fun b!1330331 () Bool)

(declare-fun res!882820 () Bool)

(assert (=> b!1330331 (=> (not res!882820) (not e!758252))))

(declare-datatypes ((List!30991 0))(
  ( (Nil!30988) (Cons!30987 (h!32196 (_ BitVec 64)) (t!45088 List!30991)) )
))
(declare-fun arrayNoDuplicates!0 (array!90029 (_ BitVec 32) List!30991) Bool)

(assert (=> b!1330331 (= res!882820 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30988))))

(declare-fun b!1330332 () Bool)

(declare-fun res!882823 () Bool)

(assert (=> b!1330332 (=> (not res!882823) (not e!758252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90029 (_ BitVec 32)) Bool)

(assert (=> b!1330332 (= res!882823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330333 () Bool)

(declare-fun res!882824 () Bool)

(assert (=> b!1330333 (=> (not res!882824) (not e!758252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330333 (= res!882824 (validKeyInArray!0 (select (arr!43476 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56554 () Bool)

(assert (=> mapIsEmpty!56554 mapRes!56554))

(declare-fun b!1330334 () Bool)

(assert (=> b!1330334 (= e!758253 (and e!758251 mapRes!56554))))

(declare-fun condMapEmpty!56554 () Bool)

(declare-fun mapDefault!56554 () ValueCell!17395)


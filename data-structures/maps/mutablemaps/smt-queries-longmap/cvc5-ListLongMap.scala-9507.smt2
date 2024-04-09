; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112770 () Bool)

(assert start!112770)

(declare-fun b_free!31045 () Bool)

(declare-fun b_next!31045 () Bool)

(assert (=> start!112770 (= b_free!31045 (not b_next!31045))))

(declare-fun tp!108780 () Bool)

(declare-fun b_and!50033 () Bool)

(assert (=> start!112770 (= tp!108780 b_and!50033)))

(declare-fun mapIsEmpty!57113 () Bool)

(declare-fun mapRes!57113 () Bool)

(assert (=> mapIsEmpty!57113 mapRes!57113))

(declare-fun b!1337198 () Bool)

(declare-fun e!761457 () Bool)

(declare-fun tp_is_empty!36955 () Bool)

(assert (=> b!1337198 (= e!761457 tp_is_empty!36955)))

(declare-fun b!1337199 () Bool)

(declare-fun e!761455 () Bool)

(assert (=> b!1337199 (= e!761455 tp_is_empty!36955)))

(declare-fun b!1337200 () Bool)

(declare-fun res!887477 () Bool)

(declare-fun e!761456 () Bool)

(assert (=> b!1337200 (=> (not res!887477) (not e!761456))))

(declare-datatypes ((array!90741 0))(
  ( (array!90742 (arr!43830 (Array (_ BitVec 32) (_ BitVec 64))) (size!44381 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90741)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90741 (_ BitVec 32)) Bool)

(assert (=> b!1337200 (= res!887477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-datatypes ((V!54377 0))(
  ( (V!54378 (val!18552 Int)) )
))
(declare-datatypes ((ValueCell!17579 0))(
  ( (ValueCellFull!17579 (v!21191 V!54377)) (EmptyCell!17579) )
))
(declare-datatypes ((array!90743 0))(
  ( (array!90744 (arr!43831 (Array (_ BitVec 32) ValueCell!17579)) (size!44382 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90743)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun b!1337201 () Bool)

(declare-fun minValue!1262 () V!54377)

(declare-fun zeroValue!1262 () V!54377)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24076 0))(
  ( (tuple2!24077 (_1!12048 (_ BitVec 64)) (_2!12048 V!54377)) )
))
(declare-datatypes ((List!31244 0))(
  ( (Nil!31241) (Cons!31240 (h!32449 tuple2!24076) (t!45565 List!31244)) )
))
(declare-datatypes ((ListLongMap!21745 0))(
  ( (ListLongMap!21746 (toList!10888 List!31244)) )
))
(declare-fun contains!8991 (ListLongMap!21745 (_ BitVec 64)) Bool)

(declare-fun +!4717 (ListLongMap!21745 tuple2!24076) ListLongMap!21745)

(declare-fun getCurrentListMapNoExtraKeys!6440 (array!90741 array!90743 (_ BitVec 32) (_ BitVec 32) V!54377 V!54377 (_ BitVec 32) Int) ListLongMap!21745)

(declare-fun get!22156 (ValueCell!17579 V!54377) V!54377)

(declare-fun dynLambda!3754 (Int (_ BitVec 64)) V!54377)

(assert (=> b!1337201 (= e!761456 (not (contains!8991 (+!4717 (getCurrentListMapNoExtraKeys!6440 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24077 (select (arr!43830 _keys!1590) from!1980) (get!22156 (select (arr!43831 _values!1320) from!1980) (dynLambda!3754 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1153)))))

(declare-fun mapNonEmpty!57113 () Bool)

(declare-fun tp!108779 () Bool)

(assert (=> mapNonEmpty!57113 (= mapRes!57113 (and tp!108779 e!761457))))

(declare-fun mapValue!57113 () ValueCell!17579)

(declare-fun mapKey!57113 () (_ BitVec 32))

(declare-fun mapRest!57113 () (Array (_ BitVec 32) ValueCell!17579))

(assert (=> mapNonEmpty!57113 (= (arr!43831 _values!1320) (store mapRest!57113 mapKey!57113 mapValue!57113))))

(declare-fun res!887478 () Bool)

(assert (=> start!112770 (=> (not res!887478) (not e!761456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112770 (= res!887478 (validMask!0 mask!1998))))

(assert (=> start!112770 e!761456))

(declare-fun e!761459 () Bool)

(declare-fun array_inv!32979 (array!90743) Bool)

(assert (=> start!112770 (and (array_inv!32979 _values!1320) e!761459)))

(assert (=> start!112770 true))

(declare-fun array_inv!32980 (array!90741) Bool)

(assert (=> start!112770 (array_inv!32980 _keys!1590)))

(assert (=> start!112770 tp!108780))

(assert (=> start!112770 tp_is_empty!36955))

(declare-fun b!1337202 () Bool)

(assert (=> b!1337202 (= e!761459 (and e!761455 mapRes!57113))))

(declare-fun condMapEmpty!57113 () Bool)

(declare-fun mapDefault!57113 () ValueCell!17579)


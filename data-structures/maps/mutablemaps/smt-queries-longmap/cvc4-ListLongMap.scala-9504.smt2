; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112730 () Bool)

(assert start!112730)

(declare-fun b_free!31031 () Bool)

(declare-fun b_next!31031 () Bool)

(assert (=> start!112730 (= b_free!31031 (not b_next!31031))))

(declare-fun tp!108735 () Bool)

(declare-fun b_and!50009 () Bool)

(assert (=> start!112730 (= tp!108735 b_and!50009)))

(declare-fun b!1336798 () Bool)

(declare-fun res!887257 () Bool)

(declare-fun e!761233 () Bool)

(assert (=> b!1336798 (=> (not res!887257) (not e!761233))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90713 0))(
  ( (array!90714 (arr!43817 (Array (_ BitVec 32) (_ BitVec 64))) (size!44368 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90713)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1336798 (= res!887257 (not (= (select (arr!43817 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336799 () Bool)

(declare-fun res!887254 () Bool)

(assert (=> b!1336799 (=> (not res!887254) (not e!761233))))

(declare-datatypes ((V!54357 0))(
  ( (V!54358 (val!18545 Int)) )
))
(declare-datatypes ((ValueCell!17572 0))(
  ( (ValueCellFull!17572 (v!21183 V!54357)) (EmptyCell!17572) )
))
(declare-datatypes ((array!90715 0))(
  ( (array!90716 (arr!43818 (Array (_ BitVec 32) ValueCell!17572)) (size!44369 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90715)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun minValue!1262 () V!54357)

(declare-fun zeroValue!1262 () V!54357)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!24070 0))(
  ( (tuple2!24071 (_1!12045 (_ BitVec 64)) (_2!12045 V!54357)) )
))
(declare-datatypes ((List!31236 0))(
  ( (Nil!31233) (Cons!31232 (h!32441 tuple2!24070) (t!45555 List!31236)) )
))
(declare-datatypes ((ListLongMap!21739 0))(
  ( (ListLongMap!21740 (toList!10885 List!31236)) )
))
(declare-fun contains!8986 (ListLongMap!21739 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5791 (array!90713 array!90715 (_ BitVec 32) (_ BitVec 32) V!54357 V!54357 (_ BitVec 32) Int) ListLongMap!21739)

(assert (=> b!1336799 (= res!887254 (contains!8986 (getCurrentListMap!5791 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1336800 () Bool)

(declare-fun res!887256 () Bool)

(assert (=> b!1336800 (=> (not res!887256) (not e!761233))))

(declare-datatypes ((List!31237 0))(
  ( (Nil!31234) (Cons!31233 (h!32442 (_ BitVec 64)) (t!45556 List!31237)) )
))
(declare-fun arrayNoDuplicates!0 (array!90713 (_ BitVec 32) List!31237) Bool)

(assert (=> b!1336800 (= res!887256 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31234))))

(declare-fun b!1336802 () Bool)

(declare-fun res!887259 () Bool)

(assert (=> b!1336802 (=> (not res!887259) (not e!761233))))

(assert (=> b!1336802 (= res!887259 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44368 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336803 () Bool)

(declare-fun res!887253 () Bool)

(assert (=> b!1336803 (=> (not res!887253) (not e!761233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336803 (= res!887253 (validKeyInArray!0 (select (arr!43817 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!57089 () Bool)

(declare-fun mapRes!57089 () Bool)

(declare-fun tp!108734 () Bool)

(declare-fun e!761232 () Bool)

(assert (=> mapNonEmpty!57089 (= mapRes!57089 (and tp!108734 e!761232))))

(declare-fun mapRest!57089 () (Array (_ BitVec 32) ValueCell!17572))

(declare-fun mapKey!57089 () (_ BitVec 32))

(declare-fun mapValue!57089 () ValueCell!17572)

(assert (=> mapNonEmpty!57089 (= (arr!43818 _values!1320) (store mapRest!57089 mapKey!57089 mapValue!57089))))

(declare-fun b!1336804 () Bool)

(declare-fun tp_is_empty!36941 () Bool)

(assert (=> b!1336804 (= e!761232 tp_is_empty!36941)))

(declare-fun b!1336805 () Bool)

(declare-fun e!761229 () Bool)

(declare-fun e!761231 () Bool)

(assert (=> b!1336805 (= e!761229 (and e!761231 mapRes!57089))))

(declare-fun condMapEmpty!57089 () Bool)

(declare-fun mapDefault!57089 () ValueCell!17572)


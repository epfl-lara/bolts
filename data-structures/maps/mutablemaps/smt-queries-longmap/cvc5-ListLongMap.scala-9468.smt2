; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112452 () Bool)

(assert start!112452)

(declare-fun b_free!30811 () Bool)

(declare-fun b_next!30811 () Bool)

(assert (=> start!112452 (= b_free!30811 (not b_next!30811))))

(declare-fun tp!108070 () Bool)

(declare-fun b_and!49663 () Bool)

(assert (=> start!112452 (= tp!108070 b_and!49663)))

(declare-fun b!1332694 () Bool)

(declare-fun e!759258 () Bool)

(assert (=> b!1332694 (= e!759258 false)))

(declare-datatypes ((V!54065 0))(
  ( (V!54066 (val!18435 Int)) )
))
(declare-datatypes ((ValueCell!17462 0))(
  ( (ValueCellFull!17462 (v!21070 V!54065)) (EmptyCell!17462) )
))
(declare-datatypes ((array!90289 0))(
  ( (array!90290 (arr!43606 (Array (_ BitVec 32) ValueCell!17462)) (size!44157 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90289)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90291 0))(
  ( (array!90292 (arr!43607 (Array (_ BitVec 32) (_ BitVec 64))) (size!44158 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90291)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54065)

(declare-fun zeroValue!1262 () V!54065)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!592001 () Bool)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((tuple2!23912 0))(
  ( (tuple2!23913 (_1!11966 (_ BitVec 64)) (_2!11966 V!54065)) )
))
(declare-datatypes ((List!31090 0))(
  ( (Nil!31087) (Cons!31086 (h!32295 tuple2!23912) (t!45295 List!31090)) )
))
(declare-datatypes ((ListLongMap!21581 0))(
  ( (ListLongMap!21582 (toList!10806 List!31090)) )
))
(declare-fun contains!8906 (ListLongMap!21581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5727 (array!90291 array!90289 (_ BitVec 32) (_ BitVec 32) V!54065 V!54065 (_ BitVec 32) Int) ListLongMap!21581)

(assert (=> b!1332694 (= lt!592001 (contains!8906 (getCurrentListMap!5727 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332695 () Bool)

(declare-fun e!759255 () Bool)

(declare-fun tp_is_empty!36721 () Bool)

(assert (=> b!1332695 (= e!759255 tp_is_empty!36721)))

(declare-fun b!1332696 () Bool)

(declare-fun res!884476 () Bool)

(assert (=> b!1332696 (=> (not res!884476) (not e!759258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90291 (_ BitVec 32)) Bool)

(assert (=> b!1332696 (= res!884476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332697 () Bool)

(declare-fun e!759256 () Bool)

(assert (=> b!1332697 (= e!759256 tp_is_empty!36721)))

(declare-fun mapIsEmpty!56755 () Bool)

(declare-fun mapRes!56755 () Bool)

(assert (=> mapIsEmpty!56755 mapRes!56755))

(declare-fun b!1332698 () Bool)

(declare-fun e!759257 () Bool)

(assert (=> b!1332698 (= e!759257 (and e!759256 mapRes!56755))))

(declare-fun condMapEmpty!56755 () Bool)

(declare-fun mapDefault!56755 () ValueCell!17462)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83264 () Bool)

(assert start!83264)

(declare-fun b_free!19229 () Bool)

(declare-fun b_next!19229 () Bool)

(assert (=> start!83264 (= b_free!19229 (not b_next!19229))))

(declare-fun tp!66967 () Bool)

(declare-fun b_and!30735 () Bool)

(assert (=> start!83264 (= tp!66967 b_and!30735)))

(declare-fun res!650092 () Bool)

(declare-fun e!547463 () Bool)

(assert (=> start!83264 (=> (not res!650092) (not e!547463))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83264 (= res!650092 (validMask!0 mask!2147))))

(assert (=> start!83264 e!547463))

(assert (=> start!83264 true))

(declare-datatypes ((V!34485 0))(
  ( (V!34486 (val!11114 Int)) )
))
(declare-datatypes ((ValueCell!10582 0))(
  ( (ValueCellFull!10582 (v!13673 V!34485)) (EmptyCell!10582) )
))
(declare-datatypes ((array!60287 0))(
  ( (array!60288 (arr!29003 (Array (_ BitVec 32) ValueCell!10582)) (size!29483 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60287)

(declare-fun e!547465 () Bool)

(declare-fun array_inv!22337 (array!60287) Bool)

(assert (=> start!83264 (and (array_inv!22337 _values!1425) e!547465)))

(declare-fun tp_is_empty!22127 () Bool)

(assert (=> start!83264 tp_is_empty!22127))

(assert (=> start!83264 tp!66967))

(declare-datatypes ((array!60289 0))(
  ( (array!60290 (arr!29004 (Array (_ BitVec 32) (_ BitVec 64))) (size!29484 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60289)

(declare-fun array_inv!22338 (array!60289) Bool)

(assert (=> start!83264 (array_inv!22338 _keys!1717)))

(declare-fun b!971089 () Bool)

(assert (=> b!971089 (= e!547463 false)))

(declare-datatypes ((tuple2!14348 0))(
  ( (tuple2!14349 (_1!7184 (_ BitVec 64)) (_2!7184 V!34485)) )
))
(declare-datatypes ((List!20238 0))(
  ( (Nil!20235) (Cons!20234 (h!21396 tuple2!14348) (t!28609 List!20238)) )
))
(declare-datatypes ((ListLongMap!13059 0))(
  ( (ListLongMap!13060 (toList!6545 List!20238)) )
))
(declare-fun lt!431758 () ListLongMap!13059)

(declare-fun zeroValue!1367 () V!34485)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34485)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3730 (array!60289 array!60287 (_ BitVec 32) (_ BitVec 32) V!34485 V!34485 (_ BitVec 32) Int) ListLongMap!13059)

(assert (=> b!971089 (= lt!431758 (getCurrentListMap!3730 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapIsEmpty!35200 () Bool)

(declare-fun mapRes!35200 () Bool)

(assert (=> mapIsEmpty!35200 mapRes!35200))

(declare-fun b!971090 () Bool)

(declare-fun res!650091 () Bool)

(assert (=> b!971090 (=> (not res!650091) (not e!547463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60289 (_ BitVec 32)) Bool)

(assert (=> b!971090 (= res!650091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971091 () Bool)

(declare-fun res!650095 () Bool)

(assert (=> b!971091 (=> (not res!650095) (not e!547463))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!971091 (= res!650095 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29484 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29484 _keys!1717))))))

(declare-fun mapNonEmpty!35200 () Bool)

(declare-fun tp!66966 () Bool)

(declare-fun e!547464 () Bool)

(assert (=> mapNonEmpty!35200 (= mapRes!35200 (and tp!66966 e!547464))))

(declare-fun mapKey!35200 () (_ BitVec 32))

(declare-fun mapRest!35200 () (Array (_ BitVec 32) ValueCell!10582))

(declare-fun mapValue!35200 () ValueCell!10582)

(assert (=> mapNonEmpty!35200 (= (arr!29003 _values!1425) (store mapRest!35200 mapKey!35200 mapValue!35200))))

(declare-fun b!971092 () Bool)

(declare-fun e!547466 () Bool)

(assert (=> b!971092 (= e!547466 tp_is_empty!22127)))

(declare-fun b!971093 () Bool)

(declare-fun res!650094 () Bool)

(assert (=> b!971093 (=> (not res!650094) (not e!547463))))

(declare-datatypes ((List!20239 0))(
  ( (Nil!20236) (Cons!20235 (h!21397 (_ BitVec 64)) (t!28610 List!20239)) )
))
(declare-fun arrayNoDuplicates!0 (array!60289 (_ BitVec 32) List!20239) Bool)

(assert (=> b!971093 (= res!650094 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20236))))

(declare-fun b!971094 () Bool)

(assert (=> b!971094 (= e!547464 tp_is_empty!22127)))

(declare-fun b!971095 () Bool)

(declare-fun res!650089 () Bool)

(assert (=> b!971095 (=> (not res!650089) (not e!547463))))

(assert (=> b!971095 (= res!650089 (and (= (size!29483 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29484 _keys!1717) (size!29483 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971096 () Bool)

(assert (=> b!971096 (= e!547465 (and e!547466 mapRes!35200))))

(declare-fun condMapEmpty!35200 () Bool)

(declare-fun mapDefault!35200 () ValueCell!10582)


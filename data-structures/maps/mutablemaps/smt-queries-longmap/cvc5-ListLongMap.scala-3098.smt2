; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43536 () Bool)

(assert start!43536)

(declare-fun b_free!12307 () Bool)

(declare-fun b_next!12307 () Bool)

(assert (=> start!43536 (= b_free!12307 (not b_next!12307))))

(declare-fun tp!43203 () Bool)

(declare-fun b_and!21085 () Bool)

(assert (=> start!43536 (= tp!43203 b_and!21085)))

(declare-fun res!287449 () Bool)

(declare-fun e!283699 () Bool)

(assert (=> start!43536 (=> (not res!287449) (not e!283699))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43536 (= res!287449 (validMask!0 mask!2352))))

(assert (=> start!43536 e!283699))

(assert (=> start!43536 true))

(declare-fun tp_is_empty!13819 () Bool)

(assert (=> start!43536 tp_is_empty!13819))

(declare-datatypes ((V!19497 0))(
  ( (V!19498 (val!6957 Int)) )
))
(declare-datatypes ((ValueCell!6548 0))(
  ( (ValueCellFull!6548 (v!9246 V!19497)) (EmptyCell!6548) )
))
(declare-datatypes ((array!31267 0))(
  ( (array!31268 (arr!15033 (Array (_ BitVec 32) ValueCell!6548)) (size!15391 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31267)

(declare-fun e!283702 () Bool)

(declare-fun array_inv!10822 (array!31267) Bool)

(assert (=> start!43536 (and (array_inv!10822 _values!1516) e!283702)))

(assert (=> start!43536 tp!43203))

(declare-datatypes ((array!31269 0))(
  ( (array!31270 (arr!15034 (Array (_ BitVec 32) (_ BitVec 64))) (size!15392 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31269)

(declare-fun array_inv!10823 (array!31269) Bool)

(assert (=> start!43536 (array_inv!10823 _keys!1874)))

(declare-fun b!482084 () Bool)

(declare-fun res!287452 () Bool)

(assert (=> b!482084 (=> (not res!287452) (not e!283699))))

(declare-datatypes ((List!9248 0))(
  ( (Nil!9245) (Cons!9244 (h!10100 (_ BitVec 64)) (t!15470 List!9248)) )
))
(declare-fun arrayNoDuplicates!0 (array!31269 (_ BitVec 32) List!9248) Bool)

(assert (=> b!482084 (= res!287452 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9245))))

(declare-fun b!482085 () Bool)

(declare-fun e!283700 () Bool)

(assert (=> b!482085 (= e!283700 tp_is_empty!13819)))

(declare-fun mapNonEmpty!22438 () Bool)

(declare-fun mapRes!22438 () Bool)

(declare-fun tp!43204 () Bool)

(declare-fun e!283698 () Bool)

(assert (=> mapNonEmpty!22438 (= mapRes!22438 (and tp!43204 e!283698))))

(declare-fun mapValue!22438 () ValueCell!6548)

(declare-fun mapRest!22438 () (Array (_ BitVec 32) ValueCell!6548))

(declare-fun mapKey!22438 () (_ BitVec 32))

(assert (=> mapNonEmpty!22438 (= (arr!15033 _values!1516) (store mapRest!22438 mapKey!22438 mapValue!22438))))

(declare-fun b!482086 () Bool)

(assert (=> b!482086 (= e!283698 tp_is_empty!13819)))

(declare-fun b!482087 () Bool)

(assert (=> b!482087 (= e!283699 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19497)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun lt!218660 () Bool)

(declare-fun zeroValue!1458 () V!19497)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9132 0))(
  ( (tuple2!9133 (_1!4576 (_ BitVec 64)) (_2!4576 V!19497)) )
))
(declare-datatypes ((List!9249 0))(
  ( (Nil!9246) (Cons!9245 (h!10101 tuple2!9132) (t!15471 List!9249)) )
))
(declare-datatypes ((ListLongMap!8059 0))(
  ( (ListLongMap!8060 (toList!4045 List!9249)) )
))
(declare-fun contains!2656 (ListLongMap!8059 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2337 (array!31269 array!31267 (_ BitVec 32) (_ BitVec 32) V!19497 V!19497 (_ BitVec 32) Int) ListLongMap!8059)

(assert (=> b!482087 (= lt!218660 (contains!2656 (getCurrentListMap!2337 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!482088 () Bool)

(assert (=> b!482088 (= e!283702 (and e!283700 mapRes!22438))))

(declare-fun condMapEmpty!22438 () Bool)

(declare-fun mapDefault!22438 () ValueCell!6548)


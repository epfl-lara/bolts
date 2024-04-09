; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40682 () Bool)

(assert start!40682)

(declare-fun b_free!10685 () Bool)

(declare-fun b_next!10685 () Bool)

(assert (=> start!40682 (= b_free!10685 (not b_next!10685))))

(declare-fun tp!37875 () Bool)

(declare-fun b_and!18711 () Bool)

(assert (=> start!40682 (= tp!37875 b_and!18711)))

(declare-fun b!449387 () Bool)

(declare-fun e!263479 () Bool)

(declare-fun tp_is_empty!12023 () Bool)

(assert (=> b!449387 (= e!263479 tp_is_empty!12023)))

(declare-fun b!449388 () Bool)

(declare-fun res!267412 () Bool)

(declare-fun e!263476 () Bool)

(assert (=> b!449388 (=> (not res!267412) (not e!263476))))

(declare-datatypes ((array!27813 0))(
  ( (array!27814 (arr!13349 (Array (_ BitVec 32) (_ BitVec 64))) (size!13701 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27813)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449388 (= res!267412 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449389 () Bool)

(declare-fun e!263480 () Bool)

(assert (=> b!449389 (= e!263476 e!263480)))

(declare-fun res!267404 () Bool)

(assert (=> b!449389 (=> (not res!267404) (not e!263480))))

(declare-fun lt!204358 () array!27813)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27813 (_ BitVec 32)) Bool)

(assert (=> b!449389 (= res!267404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204358 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449389 (= lt!204358 (array!27814 (store (arr!13349 _keys!709) i!563 k!794) (size!13701 _keys!709)))))

(declare-fun b!449390 () Bool)

(declare-fun e!263477 () Bool)

(assert (=> b!449390 (= e!263477 tp_is_empty!12023)))

(declare-fun mapNonEmpty!19668 () Bool)

(declare-fun mapRes!19668 () Bool)

(declare-fun tp!37874 () Bool)

(assert (=> mapNonEmpty!19668 (= mapRes!19668 (and tp!37874 e!263477))))

(declare-datatypes ((V!17135 0))(
  ( (V!17136 (val!6056 Int)) )
))
(declare-datatypes ((ValueCell!5668 0))(
  ( (ValueCellFull!5668 (v!8307 V!17135)) (EmptyCell!5668) )
))
(declare-datatypes ((array!27815 0))(
  ( (array!27816 (arr!13350 (Array (_ BitVec 32) ValueCell!5668)) (size!13702 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27815)

(declare-fun mapRest!19668 () (Array (_ BitVec 32) ValueCell!5668))

(declare-fun mapKey!19668 () (_ BitVec 32))

(declare-fun mapValue!19668 () ValueCell!5668)

(assert (=> mapNonEmpty!19668 (= (arr!13350 _values!549) (store mapRest!19668 mapKey!19668 mapValue!19668))))

(declare-fun b!449391 () Bool)

(assert (=> b!449391 (= e!263480 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17135)

(declare-datatypes ((tuple2!7888 0))(
  ( (tuple2!7889 (_1!3954 (_ BitVec 64)) (_2!3954 V!17135)) )
))
(declare-datatypes ((List!7999 0))(
  ( (Nil!7996) (Cons!7995 (h!8851 tuple2!7888) (t!13769 List!7999)) )
))
(declare-datatypes ((ListLongMap!6815 0))(
  ( (ListLongMap!6816 (toList!3423 List!7999)) )
))
(declare-fun lt!204356 () ListLongMap!6815)

(declare-fun v!412 () V!17135)

(declare-fun minValue!515 () V!17135)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1603 (array!27813 array!27815 (_ BitVec 32) (_ BitVec 32) V!17135 V!17135 (_ BitVec 32) Int) ListLongMap!6815)

(assert (=> b!449391 (= lt!204356 (getCurrentListMapNoExtraKeys!1603 lt!204358 (array!27816 (store (arr!13350 _values!549) i!563 (ValueCellFull!5668 v!412)) (size!13702 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204357 () ListLongMap!6815)

(assert (=> b!449391 (= lt!204357 (getCurrentListMapNoExtraKeys!1603 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449392 () Bool)

(declare-fun res!267407 () Bool)

(assert (=> b!449392 (=> (not res!267407) (not e!263480))))

(assert (=> b!449392 (= res!267407 (bvsle from!863 i!563))))

(declare-fun b!449393 () Bool)

(declare-fun res!267406 () Bool)

(assert (=> b!449393 (=> (not res!267406) (not e!263480))))

(declare-datatypes ((List!8000 0))(
  ( (Nil!7997) (Cons!7996 (h!8852 (_ BitVec 64)) (t!13770 List!8000)) )
))
(declare-fun arrayNoDuplicates!0 (array!27813 (_ BitVec 32) List!8000) Bool)

(assert (=> b!449393 (= res!267406 (arrayNoDuplicates!0 lt!204358 #b00000000000000000000000000000000 Nil!7997))))

(declare-fun b!449394 () Bool)

(declare-fun e!263478 () Bool)

(assert (=> b!449394 (= e!263478 (and e!263479 mapRes!19668))))

(declare-fun condMapEmpty!19668 () Bool)

(declare-fun mapDefault!19668 () ValueCell!5668)


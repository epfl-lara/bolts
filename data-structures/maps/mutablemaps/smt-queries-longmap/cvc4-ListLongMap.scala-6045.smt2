; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78222 () Bool)

(assert start!78222)

(declare-fun b_free!16685 () Bool)

(declare-fun b_next!16685 () Bool)

(assert (=> start!78222 (= b_free!16685 (not b_next!16685))))

(declare-fun tp!58333 () Bool)

(declare-fun b_and!27279 () Bool)

(assert (=> start!78222 (= tp!58333 b_and!27279)))

(declare-fun b!912383 () Bool)

(declare-fun e!511826 () Bool)

(declare-fun tp_is_empty!19103 () Bool)

(assert (=> b!912383 (= e!511826 tp_is_empty!19103)))

(declare-fun b!912384 () Bool)

(declare-fun res!615580 () Bool)

(declare-fun e!511822 () Bool)

(assert (=> b!912384 (=> (not res!615580) (not e!511822))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912384 (= res!615580 (inRange!0 i!717 mask!1756))))

(declare-fun b!912385 () Bool)

(declare-fun res!615582 () Bool)

(assert (=> b!912385 (=> (not res!615582) (not e!511822))))

(declare-datatypes ((V!30435 0))(
  ( (V!30436 (val!9602 Int)) )
))
(declare-datatypes ((ValueCell!9070 0))(
  ( (ValueCellFull!9070 (v!12113 V!30435)) (EmptyCell!9070) )
))
(declare-datatypes ((array!54212 0))(
  ( (array!54213 (arr!26056 (Array (_ BitVec 32) ValueCell!9070)) (size!26516 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54212)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30435)

(declare-datatypes ((array!54214 0))(
  ( (array!54215 (arr!26057 (Array (_ BitVec 32) (_ BitVec 64))) (size!26517 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54214)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30435)

(declare-datatypes ((tuple2!12568 0))(
  ( (tuple2!12569 (_1!6294 (_ BitVec 64)) (_2!6294 V!30435)) )
))
(declare-datatypes ((List!18410 0))(
  ( (Nil!18407) (Cons!18406 (h!19552 tuple2!12568) (t!26007 List!18410)) )
))
(declare-datatypes ((ListLongMap!11279 0))(
  ( (ListLongMap!11280 (toList!5655 List!18410)) )
))
(declare-fun contains!4666 (ListLongMap!11279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2885 (array!54214 array!54212 (_ BitVec 32) (_ BitVec 32) V!30435 V!30435 (_ BitVec 32) Int) ListLongMap!11279)

(assert (=> b!912385 (= res!615582 (contains!4666 (getCurrentListMap!2885 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912386 () Bool)

(declare-fun res!615581 () Bool)

(assert (=> b!912386 (=> (not res!615581) (not e!511822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54214 (_ BitVec 32)) Bool)

(assert (=> b!912386 (= res!615581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912387 () Bool)

(declare-fun res!615578 () Bool)

(assert (=> b!912387 (=> (not res!615578) (not e!511822))))

(assert (=> b!912387 (= res!615578 (and (= (select (arr!26057 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912388 () Bool)

(assert (=> b!912388 (= e!511822 (not true))))

(declare-fun arrayContainsKey!0 (array!54214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912388 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30855 0))(
  ( (Unit!30856) )
))
(declare-fun lt!410623 () Unit!30855)

(declare-fun lemmaKeyInListMapIsInArray!273 (array!54214 array!54212 (_ BitVec 32) (_ BitVec 32) V!30435 V!30435 (_ BitVec 64) Int) Unit!30855)

(assert (=> b!912388 (= lt!410623 (lemmaKeyInListMapIsInArray!273 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30382 () Bool)

(declare-fun mapRes!30382 () Bool)

(assert (=> mapIsEmpty!30382 mapRes!30382))

(declare-fun b!912389 () Bool)

(declare-fun res!615583 () Bool)

(assert (=> b!912389 (=> (not res!615583) (not e!511822))))

(declare-datatypes ((List!18411 0))(
  ( (Nil!18408) (Cons!18407 (h!19553 (_ BitVec 64)) (t!26008 List!18411)) )
))
(declare-fun arrayNoDuplicates!0 (array!54214 (_ BitVec 32) List!18411) Bool)

(assert (=> b!912389 (= res!615583 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18408))))

(declare-fun res!615577 () Bool)

(assert (=> start!78222 (=> (not res!615577) (not e!511822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78222 (= res!615577 (validMask!0 mask!1756))))

(assert (=> start!78222 e!511822))

(declare-fun e!511825 () Bool)

(declare-fun array_inv!20344 (array!54212) Bool)

(assert (=> start!78222 (and (array_inv!20344 _values!1152) e!511825)))

(assert (=> start!78222 tp!58333))

(assert (=> start!78222 true))

(assert (=> start!78222 tp_is_empty!19103))

(declare-fun array_inv!20345 (array!54214) Bool)

(assert (=> start!78222 (array_inv!20345 _keys!1386)))

(declare-fun b!912390 () Bool)

(declare-fun e!511823 () Bool)

(assert (=> b!912390 (= e!511823 tp_is_empty!19103)))

(declare-fun b!912391 () Bool)

(assert (=> b!912391 (= e!511825 (and e!511823 mapRes!30382))))

(declare-fun condMapEmpty!30382 () Bool)

(declare-fun mapDefault!30382 () ValueCell!9070)


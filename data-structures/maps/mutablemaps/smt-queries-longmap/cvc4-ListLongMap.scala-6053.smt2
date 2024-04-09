; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78290 () Bool)

(assert start!78290)

(declare-fun b_free!16733 () Bool)

(declare-fun b_next!16733 () Bool)

(assert (=> start!78290 (= b_free!16733 (not b_next!16733))))

(declare-fun tp!58479 () Bool)

(declare-fun b_and!27329 () Bool)

(assert (=> start!78290 (= tp!58479 b_and!27329)))

(declare-fun b!913232 () Bool)

(declare-fun res!616146 () Bool)

(declare-fun e!512273 () Bool)

(assert (=> b!913232 (=> (not res!616146) (not e!512273))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!913232 (= res!616146 (inRange!0 i!717 mask!1756))))

(declare-fun b!913233 () Bool)

(declare-fun res!616141 () Bool)

(assert (=> b!913233 (=> (not res!616141) (not e!512273))))

(declare-datatypes ((array!54306 0))(
  ( (array!54307 (arr!26102 (Array (_ BitVec 32) (_ BitVec 64))) (size!26562 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54306)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!913233 (= res!616141 (and (= (select (arr!26102 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!913234 () Bool)

(declare-fun res!616143 () Bool)

(assert (=> b!913234 (=> (not res!616143) (not e!512273))))

(declare-datatypes ((V!30499 0))(
  ( (V!30500 (val!9626 Int)) )
))
(declare-datatypes ((ValueCell!9094 0))(
  ( (ValueCellFull!9094 (v!12138 V!30499)) (EmptyCell!9094) )
))
(declare-datatypes ((array!54308 0))(
  ( (array!54309 (arr!26103 (Array (_ BitVec 32) ValueCell!9094)) (size!26563 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54308)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!913234 (= res!616143 (and (= (size!26563 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26562 _keys!1386) (size!26563 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!913235 () Bool)

(declare-fun e!512272 () Bool)

(assert (=> b!913235 (= e!512273 (not e!512272))))

(declare-fun res!616147 () Bool)

(assert (=> b!913235 (=> res!616147 e!512272)))

(assert (=> b!913235 (= res!616147 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26562 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!54306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!913235 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30499)

(declare-datatypes ((Unit!30889 0))(
  ( (Unit!30890) )
))
(declare-fun lt!410785 () Unit!30889)

(declare-fun minValue!1094 () V!30499)

(declare-fun lemmaKeyInListMapIsInArray!289 (array!54306 array!54308 (_ BitVec 32) (_ BitVec 32) V!30499 V!30499 (_ BitVec 64) Int) Unit!30889)

(assert (=> b!913235 (= lt!410785 (lemmaKeyInListMapIsInArray!289 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30457 () Bool)

(declare-fun mapRes!30457 () Bool)

(assert (=> mapIsEmpty!30457 mapRes!30457))

(declare-fun b!913236 () Bool)

(declare-fun res!616144 () Bool)

(assert (=> b!913236 (=> (not res!616144) (not e!512273))))

(declare-datatypes ((List!18444 0))(
  ( (Nil!18441) (Cons!18440 (h!19586 (_ BitVec 64)) (t!26043 List!18444)) )
))
(declare-fun arrayNoDuplicates!0 (array!54306 (_ BitVec 32) List!18444) Bool)

(assert (=> b!913236 (= res!616144 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18441))))

(declare-fun b!913237 () Bool)

(declare-fun res!616140 () Bool)

(assert (=> b!913237 (=> (not res!616140) (not e!512273))))

(declare-datatypes ((tuple2!12604 0))(
  ( (tuple2!12605 (_1!6312 (_ BitVec 64)) (_2!6312 V!30499)) )
))
(declare-datatypes ((List!18445 0))(
  ( (Nil!18442) (Cons!18441 (h!19587 tuple2!12604) (t!26044 List!18445)) )
))
(declare-datatypes ((ListLongMap!11315 0))(
  ( (ListLongMap!11316 (toList!5673 List!18445)) )
))
(declare-fun contains!4685 (ListLongMap!11315 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2903 (array!54306 array!54308 (_ BitVec 32) (_ BitVec 32) V!30499 V!30499 (_ BitVec 32) Int) ListLongMap!11315)

(assert (=> b!913237 (= res!616140 (contains!4685 (getCurrentListMap!2903 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!913238 () Bool)

(declare-fun res!616142 () Bool)

(assert (=> b!913238 (=> (not res!616142) (not e!512273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54306 (_ BitVec 32)) Bool)

(assert (=> b!913238 (= res!616142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!616145 () Bool)

(assert (=> start!78290 (=> (not res!616145) (not e!512273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78290 (= res!616145 (validMask!0 mask!1756))))

(assert (=> start!78290 e!512273))

(declare-fun e!512274 () Bool)

(declare-fun array_inv!20376 (array!54308) Bool)

(assert (=> start!78290 (and (array_inv!20376 _values!1152) e!512274)))

(assert (=> start!78290 tp!58479))

(assert (=> start!78290 true))

(declare-fun tp_is_empty!19151 () Bool)

(assert (=> start!78290 tp_is_empty!19151))

(declare-fun array_inv!20377 (array!54306) Bool)

(assert (=> start!78290 (array_inv!20377 _keys!1386)))

(declare-fun b!913239 () Bool)

(declare-fun e!512271 () Bool)

(assert (=> b!913239 (= e!512274 (and e!512271 mapRes!30457))))

(declare-fun condMapEmpty!30457 () Bool)

(declare-fun mapDefault!30457 () ValueCell!9094)


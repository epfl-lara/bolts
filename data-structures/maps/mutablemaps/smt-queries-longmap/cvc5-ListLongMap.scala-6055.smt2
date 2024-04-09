; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78404 () Bool)

(assert start!78404)

(declare-fun b_free!16741 () Bool)

(declare-fun b_next!16741 () Bool)

(assert (=> start!78404 (= b_free!16741 (not b_next!16741))))

(declare-fun tp!58511 () Bool)

(declare-fun b_and!27367 () Bool)

(assert (=> start!78404 (= tp!58511 b_and!27367)))

(declare-fun b!914053 () Bool)

(declare-fun e!512791 () Bool)

(declare-fun tp_is_empty!19159 () Bool)

(assert (=> b!914053 (= e!512791 tp_is_empty!19159)))

(declare-fun b!914054 () Bool)

(declare-fun res!616549 () Bool)

(declare-fun e!512790 () Bool)

(assert (=> b!914054 (=> (not res!616549) (not e!512790))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!54326 0))(
  ( (array!54327 (arr!26110 (Array (_ BitVec 32) (_ BitVec 64))) (size!26570 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54326)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!914054 (= res!616549 (and (= (select (arr!26110 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!914055 () Bool)

(declare-fun res!616551 () Bool)

(declare-fun e!512792 () Bool)

(assert (=> b!914055 (=> (not res!616551) (not e!512792))))

(declare-datatypes ((List!18451 0))(
  ( (Nil!18448) (Cons!18447 (h!19593 (_ BitVec 64)) (t!26060 List!18451)) )
))
(declare-fun arrayNoDuplicates!0 (array!54326 (_ BitVec 32) List!18451) Bool)

(assert (=> b!914055 (= res!616551 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18448))))

(declare-fun b!914056 () Bool)

(declare-fun res!616545 () Bool)

(assert (=> b!914056 (=> (not res!616545) (not e!512792))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54326 (_ BitVec 32)) Bool)

(assert (=> b!914056 (= res!616545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914057 () Bool)

(declare-fun e!512794 () Bool)

(assert (=> b!914057 (= e!512794 tp_is_empty!19159)))

(declare-fun b!914058 () Bool)

(declare-fun res!616554 () Bool)

(assert (=> b!914058 (=> (not res!616554) (not e!512792))))

(declare-datatypes ((V!30511 0))(
  ( (V!30512 (val!9630 Int)) )
))
(declare-datatypes ((ValueCell!9098 0))(
  ( (ValueCellFull!9098 (v!12146 V!30511)) (EmptyCell!9098) )
))
(declare-datatypes ((array!54328 0))(
  ( (array!54329 (arr!26111 (Array (_ BitVec 32) ValueCell!9098)) (size!26571 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54328)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!914058 (= res!616554 (and (= (size!26571 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26570 _keys!1386) (size!26571 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!914059 () Bool)

(declare-fun res!616553 () Bool)

(assert (=> b!914059 (=> (not res!616553) (not e!512790))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914059 (= res!616553 (inRange!0 i!717 mask!1756))))

(declare-fun res!616552 () Bool)

(assert (=> start!78404 (=> (not res!616552) (not e!512792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78404 (= res!616552 (validMask!0 mask!1756))))

(assert (=> start!78404 e!512792))

(declare-fun e!512795 () Bool)

(declare-fun array_inv!20382 (array!54328) Bool)

(assert (=> start!78404 (and (array_inv!20382 _values!1152) e!512795)))

(assert (=> start!78404 tp!58511))

(assert (=> start!78404 true))

(assert (=> start!78404 tp_is_empty!19159))

(declare-fun array_inv!20383 (array!54326) Bool)

(assert (=> start!78404 (array_inv!20383 _keys!1386)))

(declare-fun b!914060 () Bool)

(declare-fun res!616548 () Bool)

(declare-fun e!512797 () Bool)

(assert (=> b!914060 (=> res!616548 e!512797)))

(declare-datatypes ((tuple2!12612 0))(
  ( (tuple2!12613 (_1!6316 (_ BitVec 64)) (_2!6316 V!30511)) )
))
(declare-datatypes ((List!18452 0))(
  ( (Nil!18449) (Cons!18448 (h!19594 tuple2!12612) (t!26061 List!18452)) )
))
(declare-datatypes ((ListLongMap!11323 0))(
  ( (ListLongMap!11324 (toList!5677 List!18452)) )
))
(declare-fun lt!411347 () ListLongMap!11323)

(declare-fun lt!411349 () V!30511)

(declare-fun apply!533 (ListLongMap!11323 (_ BitVec 64)) V!30511)

(assert (=> b!914060 (= res!616548 (not (= (apply!533 lt!411347 k!1033) lt!411349)))))

(declare-fun b!914061 () Bool)

(declare-fun mapRes!30477 () Bool)

(assert (=> b!914061 (= e!512795 (and e!512791 mapRes!30477))))

(declare-fun condMapEmpty!30477 () Bool)

(declare-fun mapDefault!30477 () ValueCell!9098)


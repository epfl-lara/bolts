; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38952 () Bool)

(assert start!38952)

(declare-fun b!407405 () Bool)

(declare-fun e!244666 () Bool)

(declare-fun tp_is_empty!10363 () Bool)

(assert (=> b!407405 (= e!244666 tp_is_empty!10363)))

(declare-fun b!407406 () Bool)

(declare-fun e!244664 () Bool)

(assert (=> b!407406 (= e!244664 tp_is_empty!10363)))

(declare-fun b!407407 () Bool)

(declare-fun res!235624 () Bool)

(declare-fun e!244665 () Bool)

(assert (=> b!407407 (=> (not res!235624) (not e!244665))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407407 (= res!235624 (validKeyInArray!0 k!794))))

(declare-fun b!407408 () Bool)

(declare-fun e!244667 () Bool)

(assert (=> b!407408 (= e!244665 e!244667)))

(declare-fun res!235632 () Bool)

(assert (=> b!407408 (=> (not res!235632) (not e!244667))))

(declare-datatypes ((array!24581 0))(
  ( (array!24582 (arr!11737 (Array (_ BitVec 32) (_ BitVec 64))) (size!12089 (_ BitVec 32))) )
))
(declare-fun lt!188631 () array!24581)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24581 (_ BitVec 32)) Bool)

(assert (=> b!407408 (= res!235632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188631 mask!1025))))

(declare-fun _keys!709 () array!24581)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407408 (= lt!188631 (array!24582 (store (arr!11737 _keys!709) i!563 k!794) (size!12089 _keys!709)))))

(declare-fun b!407409 () Bool)

(declare-fun res!235630 () Bool)

(assert (=> b!407409 (=> (not res!235630) (not e!244665))))

(declare-fun arrayContainsKey!0 (array!24581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407409 (= res!235630 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407410 () Bool)

(assert (=> b!407410 (= e!244667 false)))

(declare-fun lt!188630 () Bool)

(declare-datatypes ((List!6786 0))(
  ( (Nil!6783) (Cons!6782 (h!7638 (_ BitVec 64)) (t!11968 List!6786)) )
))
(declare-fun arrayNoDuplicates!0 (array!24581 (_ BitVec 32) List!6786) Bool)

(assert (=> b!407410 (= lt!188630 (arrayNoDuplicates!0 lt!188631 #b00000000000000000000000000000000 Nil!6783))))

(declare-fun res!235626 () Bool)

(assert (=> start!38952 (=> (not res!235626) (not e!244665))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38952 (= res!235626 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12089 _keys!709))))))

(assert (=> start!38952 e!244665))

(assert (=> start!38952 true))

(declare-datatypes ((V!14923 0))(
  ( (V!14924 (val!5226 Int)) )
))
(declare-datatypes ((ValueCell!4838 0))(
  ( (ValueCellFull!4838 (v!7469 V!14923)) (EmptyCell!4838) )
))
(declare-datatypes ((array!24583 0))(
  ( (array!24584 (arr!11738 (Array (_ BitVec 32) ValueCell!4838)) (size!12090 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24583)

(declare-fun e!244668 () Bool)

(declare-fun array_inv!8570 (array!24583) Bool)

(assert (=> start!38952 (and (array_inv!8570 _values!549) e!244668)))

(declare-fun array_inv!8571 (array!24581) Bool)

(assert (=> start!38952 (array_inv!8571 _keys!709)))

(declare-fun b!407411 () Bool)

(declare-fun res!235623 () Bool)

(assert (=> b!407411 (=> (not res!235623) (not e!244665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407411 (= res!235623 (validMask!0 mask!1025))))

(declare-fun b!407412 () Bool)

(declare-fun res!235629 () Bool)

(assert (=> b!407412 (=> (not res!235629) (not e!244665))))

(assert (=> b!407412 (= res!235629 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12089 _keys!709))))))

(declare-fun b!407413 () Bool)

(declare-fun res!235631 () Bool)

(assert (=> b!407413 (=> (not res!235631) (not e!244665))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407413 (= res!235631 (and (= (size!12090 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12089 _keys!709) (size!12090 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407414 () Bool)

(declare-fun res!235628 () Bool)

(assert (=> b!407414 (=> (not res!235628) (not e!244665))))

(assert (=> b!407414 (= res!235628 (or (= (select (arr!11737 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11737 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17166 () Bool)

(declare-fun mapRes!17166 () Bool)

(assert (=> mapIsEmpty!17166 mapRes!17166))

(declare-fun b!407415 () Bool)

(assert (=> b!407415 (= e!244668 (and e!244664 mapRes!17166))))

(declare-fun condMapEmpty!17166 () Bool)

(declare-fun mapDefault!17166 () ValueCell!4838)


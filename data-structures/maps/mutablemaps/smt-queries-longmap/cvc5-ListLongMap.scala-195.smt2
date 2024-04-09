; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3788 () Bool)

(assert start!3788)

(declare-fun b!26533 () Bool)

(declare-fun res!15729 () Bool)

(declare-fun e!17294 () Bool)

(assert (=> b!26533 (=> (not res!15729) (not e!17294))))

(declare-datatypes ((array!1453 0))(
  ( (array!1454 (arr!684 (Array (_ BitVec 32) (_ BitVec 64))) (size!785 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1453)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1453 (_ BitVec 32)) Bool)

(assert (=> b!26533 (= res!15729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26534 () Bool)

(declare-fun res!15730 () Bool)

(assert (=> b!26534 (=> (not res!15730) (not e!17294))))

(declare-datatypes ((V!1307 0))(
  ( (V!1308 (val!582 Int)) )
))
(declare-datatypes ((ValueCell!356 0))(
  ( (ValueCellFull!356 (v!1668 V!1307)) (EmptyCell!356) )
))
(declare-datatypes ((array!1455 0))(
  ( (array!1456 (arr!685 (Array (_ BitVec 32) ValueCell!356)) (size!786 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1455)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26534 (= res!15730 (and (= (size!786 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!785 _keys!1833) (size!786 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26535 () Bool)

(assert (=> b!26535 (= e!17294 false)))

(declare-fun lt!10386 () Bool)

(declare-datatypes ((List!590 0))(
  ( (Nil!587) (Cons!586 (h!1153 (_ BitVec 64)) (t!3279 List!590)) )
))
(declare-fun arrayNoDuplicates!0 (array!1453 (_ BitVec 32) List!590) Bool)

(assert (=> b!26535 (= lt!10386 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!587))))

(declare-fun mapIsEmpty!1183 () Bool)

(declare-fun mapRes!1183 () Bool)

(assert (=> mapIsEmpty!1183 mapRes!1183))

(declare-fun b!26536 () Bool)

(declare-fun e!17292 () Bool)

(declare-fun tp_is_empty!1111 () Bool)

(assert (=> b!26536 (= e!17292 tp_is_empty!1111)))

(declare-fun b!26537 () Bool)

(declare-fun e!17295 () Bool)

(declare-fun e!17293 () Bool)

(assert (=> b!26537 (= e!17295 (and e!17293 mapRes!1183))))

(declare-fun condMapEmpty!1183 () Bool)

(declare-fun mapDefault!1183 () ValueCell!356)


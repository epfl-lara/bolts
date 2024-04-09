; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38914 () Bool)

(assert start!38914)

(declare-fun b!406664 () Bool)

(declare-fun res!235057 () Bool)

(declare-fun e!244322 () Bool)

(assert (=> b!406664 (=> (not res!235057) (not e!244322))))

(declare-datatypes ((array!24507 0))(
  ( (array!24508 (arr!11700 (Array (_ BitVec 32) (_ BitVec 64))) (size!12052 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24507)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406664 (= res!235057 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!406665 () Bool)

(declare-fun res!235059 () Bool)

(assert (=> b!406665 (=> (not res!235059) (not e!244322))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!14871 0))(
  ( (V!14872 (val!5207 Int)) )
))
(declare-datatypes ((ValueCell!4819 0))(
  ( (ValueCellFull!4819 (v!7450 V!14871)) (EmptyCell!4819) )
))
(declare-datatypes ((array!24509 0))(
  ( (array!24510 (arr!11701 (Array (_ BitVec 32) ValueCell!4819)) (size!12053 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24509)

(assert (=> b!406665 (= res!235059 (and (= (size!12053 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12052 _keys!709) (size!12053 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406666 () Bool)

(declare-fun res!235058 () Bool)

(assert (=> b!406666 (=> (not res!235058) (not e!244322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406666 (= res!235058 (validMask!0 mask!1025))))

(declare-fun b!406667 () Bool)

(declare-fun res!235061 () Bool)

(assert (=> b!406667 (=> (not res!235061) (not e!244322))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406667 (= res!235061 (or (= (select (arr!11700 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11700 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406668 () Bool)

(declare-fun e!244323 () Bool)

(assert (=> b!406668 (= e!244322 e!244323)))

(declare-fun res!235054 () Bool)

(assert (=> b!406668 (=> (not res!235054) (not e!244323))))

(declare-fun lt!188516 () array!24507)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24507 (_ BitVec 32)) Bool)

(assert (=> b!406668 (= res!235054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188516 mask!1025))))

(assert (=> b!406668 (= lt!188516 (array!24508 (store (arr!11700 _keys!709) i!563 k!794) (size!12052 _keys!709)))))

(declare-fun b!406669 () Bool)

(assert (=> b!406669 (= e!244323 false)))

(declare-fun lt!188517 () Bool)

(declare-datatypes ((List!6770 0))(
  ( (Nil!6767) (Cons!6766 (h!7622 (_ BitVec 64)) (t!11952 List!6770)) )
))
(declare-fun arrayNoDuplicates!0 (array!24507 (_ BitVec 32) List!6770) Bool)

(assert (=> b!406669 (= lt!188517 (arrayNoDuplicates!0 lt!188516 #b00000000000000000000000000000000 Nil!6767))))

(declare-fun b!406670 () Bool)

(declare-fun res!235056 () Bool)

(assert (=> b!406670 (=> (not res!235056) (not e!244322))))

(assert (=> b!406670 (= res!235056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!235062 () Bool)

(assert (=> start!38914 (=> (not res!235062) (not e!244322))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38914 (= res!235062 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12052 _keys!709))))))

(assert (=> start!38914 e!244322))

(assert (=> start!38914 true))

(declare-fun e!244325 () Bool)

(declare-fun array_inv!8548 (array!24509) Bool)

(assert (=> start!38914 (and (array_inv!8548 _values!549) e!244325)))

(declare-fun array_inv!8549 (array!24507) Bool)

(assert (=> start!38914 (array_inv!8549 _keys!709)))

(declare-fun b!406671 () Bool)

(declare-fun res!235055 () Bool)

(assert (=> b!406671 (=> (not res!235055) (not e!244322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406671 (= res!235055 (validKeyInArray!0 k!794))))

(declare-fun b!406672 () Bool)

(declare-fun e!244324 () Bool)

(declare-fun mapRes!17109 () Bool)

(assert (=> b!406672 (= e!244325 (and e!244324 mapRes!17109))))

(declare-fun condMapEmpty!17109 () Bool)

(declare-fun mapDefault!17109 () ValueCell!4819)


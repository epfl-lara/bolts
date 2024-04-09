; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36778 () Bool)

(assert start!36778)

(declare-fun mapIsEmpty!14382 () Bool)

(declare-fun mapRes!14382 () Bool)

(assert (=> mapIsEmpty!14382 mapRes!14382))

(declare-fun b!366879 () Bool)

(declare-fun res!205406 () Bool)

(declare-fun e!224575 () Bool)

(assert (=> b!366879 (=> (not res!205406) (not e!224575))))

(declare-datatypes ((array!21015 0))(
  ( (array!21016 (arr!9973 (Array (_ BitVec 32) (_ BitVec 64))) (size!10325 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21015)

(declare-datatypes ((List!5578 0))(
  ( (Nil!5575) (Cons!5574 (h!6430 (_ BitVec 64)) (t!10736 List!5578)) )
))
(declare-fun arrayNoDuplicates!0 (array!21015 (_ BitVec 32) List!5578) Bool)

(assert (=> b!366879 (= res!205406 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5575))))

(declare-fun b!366880 () Bool)

(declare-fun res!205402 () Bool)

(assert (=> b!366880 (=> (not res!205402) (not e!224575))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21015 (_ BitVec 32)) Bool)

(assert (=> b!366880 (= res!205402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366881 () Bool)

(declare-fun e!224580 () Bool)

(assert (=> b!366881 (= e!224575 e!224580)))

(declare-fun res!205405 () Bool)

(assert (=> b!366881 (=> (not res!205405) (not e!224580))))

(declare-fun lt!169284 () array!21015)

(assert (=> b!366881 (= res!205405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169284 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366881 (= lt!169284 (array!21016 (store (arr!9973 _keys!658) i!548 k!778) (size!10325 _keys!658)))))

(declare-fun b!366882 () Bool)

(declare-fun e!224577 () Bool)

(declare-fun e!224579 () Bool)

(assert (=> b!366882 (= e!224577 (and e!224579 mapRes!14382))))

(declare-fun condMapEmpty!14382 () Bool)

(declare-datatypes ((V!12499 0))(
  ( (V!12500 (val!4317 Int)) )
))
(declare-datatypes ((ValueCell!3929 0))(
  ( (ValueCellFull!3929 (v!6510 V!12499)) (EmptyCell!3929) )
))
(declare-datatypes ((array!21017 0))(
  ( (array!21018 (arr!9974 (Array (_ BitVec 32) ValueCell!3929)) (size!10326 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21017)

(declare-fun mapDefault!14382 () ValueCell!3929)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38968 () Bool)

(assert start!38968)

(declare-fun b!407717 () Bool)

(declare-fun res!235869 () Bool)

(declare-fun e!244812 () Bool)

(assert (=> b!407717 (=> (not res!235869) (not e!244812))))

(declare-datatypes ((array!24613 0))(
  ( (array!24614 (arr!11753 (Array (_ BitVec 32) (_ BitVec 64))) (size!12105 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24613)

(declare-datatypes ((List!6793 0))(
  ( (Nil!6790) (Cons!6789 (h!7645 (_ BitVec 64)) (t!11975 List!6793)) )
))
(declare-fun arrayNoDuplicates!0 (array!24613 (_ BitVec 32) List!6793) Bool)

(assert (=> b!407717 (= res!235869 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6790))))

(declare-fun mapNonEmpty!17190 () Bool)

(declare-fun mapRes!17190 () Bool)

(declare-fun tp!33309 () Bool)

(declare-fun e!244810 () Bool)

(assert (=> mapNonEmpty!17190 (= mapRes!17190 (and tp!33309 e!244810))))

(declare-datatypes ((V!14943 0))(
  ( (V!14944 (val!5234 Int)) )
))
(declare-datatypes ((ValueCell!4846 0))(
  ( (ValueCellFull!4846 (v!7477 V!14943)) (EmptyCell!4846) )
))
(declare-fun mapRest!17190 () (Array (_ BitVec 32) ValueCell!4846))

(declare-datatypes ((array!24615 0))(
  ( (array!24616 (arr!11754 (Array (_ BitVec 32) ValueCell!4846)) (size!12106 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24615)

(declare-fun mapKey!17190 () (_ BitVec 32))

(declare-fun mapValue!17190 () ValueCell!4846)

(assert (=> mapNonEmpty!17190 (= (arr!11754 _values!549) (store mapRest!17190 mapKey!17190 mapValue!17190))))

(declare-fun b!407718 () Bool)

(declare-fun e!244809 () Bool)

(assert (=> b!407718 (= e!244809 false)))

(declare-fun lt!188678 () Bool)

(declare-fun lt!188679 () array!24613)

(assert (=> b!407718 (= lt!188678 (arrayNoDuplicates!0 lt!188679 #b00000000000000000000000000000000 Nil!6790))))

(declare-fun b!407719 () Bool)

(declare-fun res!235870 () Bool)

(assert (=> b!407719 (=> (not res!235870) (not e!244812))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407719 (= res!235870 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17190 () Bool)

(assert (=> mapIsEmpty!17190 mapRes!17190))

(declare-fun b!407720 () Bool)

(declare-fun res!235872 () Bool)

(assert (=> b!407720 (=> (not res!235872) (not e!244812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407720 (= res!235872 (validKeyInArray!0 k!794))))

(declare-fun b!407721 () Bool)

(declare-fun res!235867 () Bool)

(assert (=> b!407721 (=> (not res!235867) (not e!244812))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407721 (= res!235867 (or (= (select (arr!11753 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11753 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407722 () Bool)

(declare-fun res!235868 () Bool)

(assert (=> b!407722 (=> (not res!235868) (not e!244812))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24613 (_ BitVec 32)) Bool)

(assert (=> b!407722 (= res!235868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407723 () Bool)

(declare-fun res!235871 () Bool)

(assert (=> b!407723 (=> (not res!235871) (not e!244812))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407723 (= res!235871 (and (= (size!12106 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12105 _keys!709) (size!12106 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407724 () Bool)

(declare-fun e!244811 () Bool)

(declare-fun tp_is_empty!10379 () Bool)

(assert (=> b!407724 (= e!244811 tp_is_empty!10379)))

(declare-fun b!407725 () Bool)

(declare-fun e!244808 () Bool)

(assert (=> b!407725 (= e!244808 (and e!244811 mapRes!17190))))

(declare-fun condMapEmpty!17190 () Bool)

(declare-fun mapDefault!17190 () ValueCell!4846)


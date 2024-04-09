; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38956 () Bool)

(assert start!38956)

(declare-fun b!407483 () Bool)

(declare-fun e!244705 () Bool)

(declare-fun e!244702 () Bool)

(assert (=> b!407483 (= e!244705 e!244702)))

(declare-fun res!235690 () Bool)

(assert (=> b!407483 (=> (not res!235690) (not e!244702))))

(declare-datatypes ((array!24589 0))(
  ( (array!24590 (arr!11741 (Array (_ BitVec 32) (_ BitVec 64))) (size!12093 (_ BitVec 32))) )
))
(declare-fun lt!188642 () array!24589)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24589 (_ BitVec 32)) Bool)

(assert (=> b!407483 (= res!235690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188642 mask!1025))))

(declare-fun _keys!709 () array!24589)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407483 (= lt!188642 (array!24590 (store (arr!11741 _keys!709) i!563 k!794) (size!12093 _keys!709)))))

(declare-fun b!407484 () Bool)

(declare-fun res!235692 () Bool)

(assert (=> b!407484 (=> (not res!235692) (not e!244705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407484 (= res!235692 (validMask!0 mask!1025))))

(declare-fun res!235687 () Bool)

(assert (=> start!38956 (=> (not res!235687) (not e!244705))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38956 (= res!235687 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12093 _keys!709))))))

(assert (=> start!38956 e!244705))

(assert (=> start!38956 true))

(declare-datatypes ((V!14927 0))(
  ( (V!14928 (val!5228 Int)) )
))
(declare-datatypes ((ValueCell!4840 0))(
  ( (ValueCellFull!4840 (v!7471 V!14927)) (EmptyCell!4840) )
))
(declare-datatypes ((array!24591 0))(
  ( (array!24592 (arr!11742 (Array (_ BitVec 32) ValueCell!4840)) (size!12094 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24591)

(declare-fun e!244703 () Bool)

(declare-fun array_inv!8574 (array!24591) Bool)

(assert (=> start!38956 (and (array_inv!8574 _values!549) e!244703)))

(declare-fun array_inv!8575 (array!24589) Bool)

(assert (=> start!38956 (array_inv!8575 _keys!709)))

(declare-fun b!407485 () Bool)

(declare-fun res!235684 () Bool)

(assert (=> b!407485 (=> (not res!235684) (not e!244705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407485 (= res!235684 (validKeyInArray!0 k!794))))

(declare-fun b!407486 () Bool)

(declare-fun res!235689 () Bool)

(assert (=> b!407486 (=> (not res!235689) (not e!244705))))

(declare-datatypes ((List!6788 0))(
  ( (Nil!6785) (Cons!6784 (h!7640 (_ BitVec 64)) (t!11970 List!6788)) )
))
(declare-fun arrayNoDuplicates!0 (array!24589 (_ BitVec 32) List!6788) Bool)

(assert (=> b!407486 (= res!235689 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6785))))

(declare-fun mapIsEmpty!17172 () Bool)

(declare-fun mapRes!17172 () Bool)

(assert (=> mapIsEmpty!17172 mapRes!17172))

(declare-fun b!407487 () Bool)

(declare-fun res!235691 () Bool)

(assert (=> b!407487 (=> (not res!235691) (not e!244705))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407487 (= res!235691 (and (= (size!12094 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12093 _keys!709) (size!12094 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407488 () Bool)

(declare-fun res!235685 () Bool)

(assert (=> b!407488 (=> (not res!235685) (not e!244705))))

(declare-fun arrayContainsKey!0 (array!24589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407488 (= res!235685 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17172 () Bool)

(declare-fun tp!33291 () Bool)

(declare-fun e!244700 () Bool)

(assert (=> mapNonEmpty!17172 (= mapRes!17172 (and tp!33291 e!244700))))

(declare-fun mapValue!17172 () ValueCell!4840)

(declare-fun mapRest!17172 () (Array (_ BitVec 32) ValueCell!4840))

(declare-fun mapKey!17172 () (_ BitVec 32))

(assert (=> mapNonEmpty!17172 (= (arr!11742 _values!549) (store mapRest!17172 mapKey!17172 mapValue!17172))))

(declare-fun b!407489 () Bool)

(declare-fun e!244704 () Bool)

(declare-fun tp_is_empty!10367 () Bool)

(assert (=> b!407489 (= e!244704 tp_is_empty!10367)))

(declare-fun b!407490 () Bool)

(assert (=> b!407490 (= e!244700 tp_is_empty!10367)))

(declare-fun b!407491 () Bool)

(assert (=> b!407491 (= e!244702 false)))

(declare-fun lt!188643 () Bool)

(assert (=> b!407491 (= lt!188643 (arrayNoDuplicates!0 lt!188642 #b00000000000000000000000000000000 Nil!6785))))

(declare-fun b!407492 () Bool)

(declare-fun res!235686 () Bool)

(assert (=> b!407492 (=> (not res!235686) (not e!244705))))

(assert (=> b!407492 (= res!235686 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12093 _keys!709))))))

(declare-fun b!407493 () Bool)

(declare-fun res!235688 () Bool)

(assert (=> b!407493 (=> (not res!235688) (not e!244705))))

(assert (=> b!407493 (= res!235688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407494 () Bool)

(declare-fun res!235683 () Bool)

(assert (=> b!407494 (=> (not res!235683) (not e!244705))))

(assert (=> b!407494 (= res!235683 (or (= (select (arr!11741 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11741 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407495 () Bool)

(assert (=> b!407495 (= e!244703 (and e!244704 mapRes!17172))))

(declare-fun condMapEmpty!17172 () Bool)

(declare-fun mapDefault!17172 () ValueCell!4840)


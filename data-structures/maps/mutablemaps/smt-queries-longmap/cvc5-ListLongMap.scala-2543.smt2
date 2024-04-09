; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39084 () Bool)

(assert start!39084)

(declare-fun b_free!9343 () Bool)

(declare-fun b_next!9343 () Bool)

(assert (=> start!39084 (= b_free!9343 (not b_next!9343))))

(declare-fun tp!33558 () Bool)

(declare-fun b_and!16747 () Bool)

(assert (=> start!39084 (= tp!33558 b_and!16747)))

(declare-fun mapIsEmpty!17364 () Bool)

(declare-fun mapRes!17364 () Bool)

(assert (=> mapIsEmpty!17364 mapRes!17364))

(declare-fun b!410128 () Bool)

(declare-fun res!237754 () Bool)

(declare-fun e!245856 () Bool)

(assert (=> b!410128 (=> (not res!237754) (not e!245856))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410128 (= res!237754 (validKeyInArray!0 k!794))))

(declare-fun b!410129 () Bool)

(declare-fun e!245852 () Bool)

(declare-fun tp_is_empty!10495 () Bool)

(assert (=> b!410129 (= e!245852 tp_is_empty!10495)))

(declare-fun b!410130 () Bool)

(declare-fun res!237757 () Bool)

(declare-fun e!245853 () Bool)

(assert (=> b!410130 (=> (not res!237757) (not e!245853))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410130 (= res!237757 (bvsle from!863 i!563))))

(declare-fun b!410131 () Bool)

(assert (=> b!410131 (= e!245856 e!245853)))

(declare-fun res!237760 () Bool)

(assert (=> b!410131 (=> (not res!237760) (not e!245853))))

(declare-datatypes ((array!24839 0))(
  ( (array!24840 (arr!11866 (Array (_ BitVec 32) (_ BitVec 64))) (size!12218 (_ BitVec 32))) )
))
(declare-fun lt!189027 () array!24839)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24839 (_ BitVec 32)) Bool)

(assert (=> b!410131 (= res!237760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189027 mask!1025))))

(declare-fun _keys!709 () array!24839)

(assert (=> b!410131 (= lt!189027 (array!24840 (store (arr!11866 _keys!709) i!563 k!794) (size!12218 _keys!709)))))

(declare-fun b!410132 () Bool)

(declare-fun res!237756 () Bool)

(assert (=> b!410132 (=> (not res!237756) (not e!245856))))

(assert (=> b!410132 (= res!237756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17364 () Bool)

(declare-fun tp!33557 () Bool)

(assert (=> mapNonEmpty!17364 (= mapRes!17364 (and tp!33557 e!245852))))

(declare-datatypes ((V!15099 0))(
  ( (V!15100 (val!5292 Int)) )
))
(declare-datatypes ((ValueCell!4904 0))(
  ( (ValueCellFull!4904 (v!7535 V!15099)) (EmptyCell!4904) )
))
(declare-fun mapValue!17364 () ValueCell!4904)

(declare-datatypes ((array!24841 0))(
  ( (array!24842 (arr!11867 (Array (_ BitVec 32) ValueCell!4904)) (size!12219 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24841)

(declare-fun mapKey!17364 () (_ BitVec 32))

(declare-fun mapRest!17364 () (Array (_ BitVec 32) ValueCell!4904))

(assert (=> mapNonEmpty!17364 (= (arr!11867 _values!549) (store mapRest!17364 mapKey!17364 mapValue!17364))))

(declare-fun b!410133 () Bool)

(declare-fun res!237758 () Bool)

(assert (=> b!410133 (=> (not res!237758) (not e!245856))))

(assert (=> b!410133 (= res!237758 (or (= (select (arr!11866 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11866 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410134 () Bool)

(declare-fun res!237761 () Bool)

(assert (=> b!410134 (=> (not res!237761) (not e!245853))))

(declare-datatypes ((List!6853 0))(
  ( (Nil!6850) (Cons!6849 (h!7705 (_ BitVec 64)) (t!12035 List!6853)) )
))
(declare-fun arrayNoDuplicates!0 (array!24839 (_ BitVec 32) List!6853) Bool)

(assert (=> b!410134 (= res!237761 (arrayNoDuplicates!0 lt!189027 #b00000000000000000000000000000000 Nil!6850))))

(declare-fun b!410135 () Bool)

(declare-fun res!237751 () Bool)

(assert (=> b!410135 (=> (not res!237751) (not e!245856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410135 (= res!237751 (validMask!0 mask!1025))))

(declare-fun b!410136 () Bool)

(declare-fun e!245854 () Bool)

(declare-fun e!245855 () Bool)

(assert (=> b!410136 (= e!245854 (and e!245855 mapRes!17364))))

(declare-fun condMapEmpty!17364 () Bool)

(declare-fun mapDefault!17364 () ValueCell!4904)


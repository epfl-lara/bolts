; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39018 () Bool)

(assert start!39018)

(declare-fun b!408692 () Bool)

(declare-fun res!236617 () Bool)

(declare-fun e!245258 () Bool)

(assert (=> b!408692 (=> (not res!236617) (not e!245258))))

(declare-datatypes ((array!24711 0))(
  ( (array!24712 (arr!11802 (Array (_ BitVec 32) (_ BitVec 64))) (size!12154 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24711)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24711 (_ BitVec 32)) Bool)

(assert (=> b!408692 (= res!236617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408693 () Bool)

(declare-fun e!245261 () Bool)

(declare-fun tp_is_empty!10429 () Bool)

(assert (=> b!408693 (= e!245261 tp_is_empty!10429)))

(declare-fun mapIsEmpty!17265 () Bool)

(declare-fun mapRes!17265 () Bool)

(assert (=> mapIsEmpty!17265 mapRes!17265))

(declare-fun b!408694 () Bool)

(declare-fun res!236622 () Bool)

(assert (=> b!408694 (=> (not res!236622) (not e!245258))))

(declare-datatypes ((List!6815 0))(
  ( (Nil!6812) (Cons!6811 (h!7667 (_ BitVec 64)) (t!11997 List!6815)) )
))
(declare-fun arrayNoDuplicates!0 (array!24711 (_ BitVec 32) List!6815) Bool)

(assert (=> b!408694 (= res!236622 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6812))))

(declare-fun b!408695 () Bool)

(declare-fun e!245260 () Bool)

(assert (=> b!408695 (= e!245258 e!245260)))

(declare-fun res!236619 () Bool)

(assert (=> b!408695 (=> (not res!236619) (not e!245260))))

(declare-fun lt!188828 () array!24711)

(assert (=> b!408695 (= res!236619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188828 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408695 (= lt!188828 (array!24712 (store (arr!11802 _keys!709) i!563 k!794) (size!12154 _keys!709)))))

(declare-fun b!408696 () Bool)

(declare-fun res!236616 () Bool)

(assert (=> b!408696 (=> (not res!236616) (not e!245258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408696 (= res!236616 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17265 () Bool)

(declare-fun tp!33384 () Bool)

(assert (=> mapNonEmpty!17265 (= mapRes!17265 (and tp!33384 e!245261))))

(declare-datatypes ((V!15011 0))(
  ( (V!15012 (val!5259 Int)) )
))
(declare-datatypes ((ValueCell!4871 0))(
  ( (ValueCellFull!4871 (v!7502 V!15011)) (EmptyCell!4871) )
))
(declare-fun mapValue!17265 () ValueCell!4871)

(declare-fun mapKey!17265 () (_ BitVec 32))

(declare-datatypes ((array!24713 0))(
  ( (array!24714 (arr!11803 (Array (_ BitVec 32) ValueCell!4871)) (size!12155 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24713)

(declare-fun mapRest!17265 () (Array (_ BitVec 32) ValueCell!4871))

(assert (=> mapNonEmpty!17265 (= (arr!11803 _values!549) (store mapRest!17265 mapKey!17265 mapValue!17265))))

(declare-fun b!408697 () Bool)

(declare-fun res!236614 () Bool)

(assert (=> b!408697 (=> (not res!236614) (not e!245258))))

(assert (=> b!408697 (= res!236614 (or (= (select (arr!11802 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11802 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408698 () Bool)

(declare-fun e!245259 () Bool)

(declare-fun e!245262 () Bool)

(assert (=> b!408698 (= e!245259 (and e!245262 mapRes!17265))))

(declare-fun condMapEmpty!17265 () Bool)

(declare-fun mapDefault!17265 () ValueCell!4871)


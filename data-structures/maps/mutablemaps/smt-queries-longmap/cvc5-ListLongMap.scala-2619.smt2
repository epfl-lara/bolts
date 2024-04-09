; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39540 () Bool)

(assert start!39540)

(declare-fun b_free!9799 () Bool)

(declare-fun b_next!9799 () Bool)

(assert (=> start!39540 (= b_free!9799 (not b_next!9799))))

(declare-fun tp!34926 () Bool)

(declare-fun b_and!17473 () Bool)

(assert (=> start!39540 (= tp!34926 b_and!17473)))

(declare-fun mapIsEmpty!18048 () Bool)

(declare-fun mapRes!18048 () Bool)

(assert (=> mapIsEmpty!18048 mapRes!18048))

(declare-fun b!422529 () Bool)

(declare-fun res!246859 () Bool)

(declare-fun e!251343 () Bool)

(assert (=> b!422529 (=> (not res!246859) (not e!251343))))

(declare-datatypes ((array!25729 0))(
  ( (array!25730 (arr!12311 (Array (_ BitVec 32) (_ BitVec 64))) (size!12663 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25729)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422529 (= res!246859 (or (= (select (arr!12311 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12311 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18048 () Bool)

(declare-fun tp!34925 () Bool)

(declare-fun e!251346 () Bool)

(assert (=> mapNonEmpty!18048 (= mapRes!18048 (and tp!34925 e!251346))))

(declare-datatypes ((V!15707 0))(
  ( (V!15708 (val!5520 Int)) )
))
(declare-datatypes ((ValueCell!5132 0))(
  ( (ValueCellFull!5132 (v!7763 V!15707)) (EmptyCell!5132) )
))
(declare-fun mapValue!18048 () ValueCell!5132)

(declare-fun mapKey!18048 () (_ BitVec 32))

(declare-fun mapRest!18048 () (Array (_ BitVec 32) ValueCell!5132))

(declare-datatypes ((array!25731 0))(
  ( (array!25732 (arr!12312 (Array (_ BitVec 32) ValueCell!5132)) (size!12664 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25731)

(assert (=> mapNonEmpty!18048 (= (arr!12312 _values!549) (store mapRest!18048 mapKey!18048 mapValue!18048))))

(declare-fun b!422530 () Bool)

(declare-fun tp_is_empty!10951 () Bool)

(assert (=> b!422530 (= e!251346 tp_is_empty!10951)))

(declare-fun b!422532 () Bool)

(declare-fun res!246863 () Bool)

(assert (=> b!422532 (=> (not res!246863) (not e!251343))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422532 (= res!246863 (validKeyInArray!0 k!794))))

(declare-fun b!422533 () Bool)

(declare-fun e!251345 () Bool)

(assert (=> b!422533 (= e!251343 e!251345)))

(declare-fun res!246868 () Bool)

(assert (=> b!422533 (=> (not res!246868) (not e!251345))))

(declare-fun lt!193987 () array!25729)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25729 (_ BitVec 32)) Bool)

(assert (=> b!422533 (= res!246868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193987 mask!1025))))

(assert (=> b!422533 (= lt!193987 (array!25730 (store (arr!12311 _keys!709) i!563 k!794) (size!12663 _keys!709)))))

(declare-fun b!422534 () Bool)

(declare-fun res!246867 () Bool)

(assert (=> b!422534 (=> (not res!246867) (not e!251343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422534 (= res!246867 (validMask!0 mask!1025))))

(declare-fun b!422535 () Bool)

(declare-fun res!246869 () Bool)

(assert (=> b!422535 (=> (not res!246869) (not e!251343))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!422535 (= res!246869 (and (= (size!12664 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12663 _keys!709) (size!12664 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422536 () Bool)

(declare-fun e!251347 () Bool)

(declare-fun e!251344 () Bool)

(assert (=> b!422536 (= e!251347 (and e!251344 mapRes!18048))))

(declare-fun condMapEmpty!18048 () Bool)

(declare-fun mapDefault!18048 () ValueCell!5132)

